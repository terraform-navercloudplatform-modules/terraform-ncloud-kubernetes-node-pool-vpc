resource "ncloud_nks_node_pool" "nks_node_pool" {
  node_pool_name    = var.node_pool_name
  cluster_uuid      = var.cluster_uuid
  node_count        = var.node_count
  product_code      = var.product_code
  server_spec_code  = var.server_spec_code
  storage_size      = var.storage_size
  software_code     = var.software_code
  dynamic "autoscale" {
    for_each = var.autoscale == null ? [] : [var.autoscale]
    content {
      enabled = autoscale.value.enabled
      max     = autoscale.value.max
      min     = autoscale.value.min
    }
    
  }
  subnet_no_list    = var.subnet_no_list
  k8s_version       = var.k8s_version
  dynamic "label" {
    for_each = var.label == null ? [] : [var.label]
    content {
      key   = label.value
      value = label.value
    }
  }
  dynamic "taint" {
    for_each = var.taint == null ? [] : [var.taint]
    content {
      key    = taint.value
      value  = taint.value
      effect = taint.value
    } 
  }
}
