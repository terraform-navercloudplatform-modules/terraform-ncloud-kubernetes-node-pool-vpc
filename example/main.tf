terraform {
  required_providers {
    ncloud = {
      source = "NaverCloudPlatform/ncloud"
    }
  }
  required_version = ">= 0.13"
}

provider "ncloud" {}

resource "ncloud_vpc" "vpc" {
  name            = "vpc"
  ipv4_cidr_block = "10.0.0.0/16"
}

resource "ncloud_subnet" "subnet" {
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = "10.0.1.0/24"
  zone           = "KR-1"
  network_acl_no = ncloud_vpc.vpc.default_network_acl_no
  subnet_type    = "PRIVATE"
  name           = "subnet-01"
  usage_type     = "GEN"
}

resource "ncloud_subnet" "subnet_lb" {
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = "10.0.100.0/24"
  zone           = "KR-1"
  network_acl_no = ncloud_vpc.vpc.default_network_acl_no
  subnet_type    = "PRIVATE"
  name           = "subnet-lb"
  usage_type     = "LOADB"
}

resource "ncloud_subnet" "subnet_lb_pub" {
  vpc_no         = ncloud_vpc.vpc.id
  subnet         = "10.0.101.0/24"
  zone           = "KR-1"
  network_acl_no = ncloud_vpc.vpc.default_network_acl_no
  subnet_type    = "PUBLIC"
  name           = "subnet-lb-pub"
  usage_type     = "LOADB"
}

resource "ncloud_login_key" "login_key" {
  key_name = "sample-login-key"
}

resource "ncloud_nks_cluster" "cluster" {
  hypervisor_code        = "KVM"
  cluster_type           = "SVR.VNKS.STAND.C002.M008.G003"
  login_key_name         = ncloud_login_key.login_key.key_name
  name                   = "sample-cluster"
  lb_private_subnet_no   = ncloud_subnet.subnet_lb.id
  lb_public_subnet_no    = ncloud_subnet.subnet_lb_pub.id
  kube_network_plugin    = "cilium"
  subnet_no_list         = [ ncloud_subnet.subnet.id ]
  vpc_no                 = ncloud_vpc.vpc.id
  public_network         = false
  zone                   = "KR-1"

}

module "kubernetes-node-pool-vpc" {
  source  = "../"
    cluster_uuid     = ncloud_nks_cluster.cluster.uuid
  node_pool_name   = "sample-node-pool"
  node_count       = 2
  software_code    = data.ncloud_nks_server_images.image.images[0].value
  server_spec_code = data.ncloud_nks_server_products.product.products.0.value
  storage_size = 200
  autoscale = {
    enabled = false
    min = 2
    max = 2
  }
}

# resource "ncloud_nks_node_pool" "node_pool" {
#   cluster_uuid     = ncloud_nks_cluster.cluster.uuid
#   node_pool_name   = "sample-node-pool"
#   node_count       = 2
#   software_code    = data.ncloud_nks_server_images.image.images[0].value
#   server_spec_code = data.ncloud_nks_server_products.product.products.0.value
#   storage_size = 200
#   autoscale {
#     enabled = false
#     min = 2
#     max = 2
#   }
# }