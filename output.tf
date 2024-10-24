output "id" {
  description = "The ID of nodepool. (cluster_uuid:node_pool_name)"
  value       = ncloud_nks_node_pool.nks_node_pool.id
}

output "instance_no" {
  description = "Instance No."
  value       = ncloud_nks_node_pool.nks_node_pool.instance_no
}

output "nodes" {
  description = "Running nodes in nodepool."
  value       = ncloud_nks_node_pool.nks_node_pool.nodes
}

output "name" {
  description = "The name of Server instance."
  value       = ncloud_nks_node_pool.nks_node_pool.nodes[*].name
}

output "node_instance_no" {
  description = "The ID of server instance."
  value       = ncloud_nks_node_pool.nks_node_pool.nodes[*].instance_no
}

output "node_spec" {
  description = "Server spec."
  value       = ncloud_nks_node_pool.nks_node_pool.nodes[*].spec
}

output "node_private_ip" {
  description = "Private IP."
  value       = ncloud_nks_node_pool.nks_node_pool.nodes[*].private_ip
}

output "node_public_ip" {
  description = "Public IP."
  value       = ncloud_nks_node_pool.nks_node_pool.nodes[*].public_ip
}

output "node_status" {
  description = "Node Status."
  value       = ncloud_nks_node_pool.nks_node_pool.nodes[*].node_status
}

output "node_container_version" {
  description = "Container version of node."
  value       = ncloud_nks_node_pool.nks_node_pool.nodes[*].container_version
}

output "node_kernel_version" {
  description = "Kernel version of node."
  value       = ncloud_nks_node_pool.nks_node_pool.nodes[*].kernel_version
}