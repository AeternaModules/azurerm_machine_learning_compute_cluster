output "machine_learning_compute_clusters" {
  description = "All machine_learning_compute_cluster resources"
  value       = azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters
  sensitive   = true
}
output "machine_learning_compute_clusters_description" {
  description = "List of description values across all machine_learning_compute_clusters"
  value       = [for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : v.description]
}
output "machine_learning_compute_clusters_identity" {
  description = "List of identity values across all machine_learning_compute_clusters"
  value       = [for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : v.identity]
}
output "machine_learning_compute_clusters_local_auth_enabled" {
  description = "List of local_auth_enabled values across all machine_learning_compute_clusters"
  value       = [for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : v.local_auth_enabled]
}
output "machine_learning_compute_clusters_location" {
  description = "List of location values across all machine_learning_compute_clusters"
  value       = [for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : v.location]
}
output "machine_learning_compute_clusters_machine_learning_workspace_id" {
  description = "List of machine_learning_workspace_id values across all machine_learning_compute_clusters"
  value       = [for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : v.machine_learning_workspace_id]
}
output "machine_learning_compute_clusters_name" {
  description = "List of name values across all machine_learning_compute_clusters"
  value       = [for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : v.name]
}
output "machine_learning_compute_clusters_node_public_ip_enabled" {
  description = "List of node_public_ip_enabled values across all machine_learning_compute_clusters"
  value       = [for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : v.node_public_ip_enabled]
}
output "machine_learning_compute_clusters_scale_settings" {
  description = "List of scale_settings values across all machine_learning_compute_clusters"
  value       = [for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : v.scale_settings]
}
output "machine_learning_compute_clusters_ssh" {
  description = "List of ssh values across all machine_learning_compute_clusters"
  value       = [for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : v.ssh]
  sensitive   = true
}
output "machine_learning_compute_clusters_ssh_public_access_enabled" {
  description = "List of ssh_public_access_enabled values across all machine_learning_compute_clusters"
  value       = [for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : v.ssh_public_access_enabled]
}
output "machine_learning_compute_clusters_subnet_resource_id" {
  description = "List of subnet_resource_id values across all machine_learning_compute_clusters"
  value       = [for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : v.subnet_resource_id]
}
output "machine_learning_compute_clusters_tags" {
  description = "List of tags values across all machine_learning_compute_clusters"
  value       = [for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : v.tags]
}
output "machine_learning_compute_clusters_vm_priority" {
  description = "List of vm_priority values across all machine_learning_compute_clusters"
  value       = [for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : v.vm_priority]
}
output "machine_learning_compute_clusters_vm_size" {
  description = "List of vm_size values across all machine_learning_compute_clusters"
  value       = [for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : v.vm_size]
}

