output "machine_learning_compute_clusters_id" {
  description = "Map of id values across all machine_learning_compute_clusters, keyed the same as var.machine_learning_compute_clusters"
  value       = { for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "machine_learning_compute_clusters_description" {
  description = "Map of description values across all machine_learning_compute_clusters, keyed the same as var.machine_learning_compute_clusters"
  value       = { for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : k => v.description if v.description != null && length(v.description) > 0 }
}
output "machine_learning_compute_clusters_identity" {
  description = "Map of identity values across all machine_learning_compute_clusters, keyed the same as var.machine_learning_compute_clusters"
  value       = { for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "machine_learning_compute_clusters_local_auth_enabled" {
  description = "Map of local_auth_enabled values across all machine_learning_compute_clusters, keyed the same as var.machine_learning_compute_clusters"
  value       = { for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : k => v.local_auth_enabled if v.local_auth_enabled != null }
}
output "machine_learning_compute_clusters_location" {
  description = "Map of location values across all machine_learning_compute_clusters, keyed the same as var.machine_learning_compute_clusters"
  value       = { for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : k => v.location if v.location != null && length(v.location) > 0 }
}
output "machine_learning_compute_clusters_machine_learning_workspace_id" {
  description = "Map of machine_learning_workspace_id values across all machine_learning_compute_clusters, keyed the same as var.machine_learning_compute_clusters"
  value       = { for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : k => v.machine_learning_workspace_id if v.machine_learning_workspace_id != null && length(v.machine_learning_workspace_id) > 0 }
}
output "machine_learning_compute_clusters_name" {
  description = "Map of name values across all machine_learning_compute_clusters, keyed the same as var.machine_learning_compute_clusters"
  value       = { for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "machine_learning_compute_clusters_node_public_ip_enabled" {
  description = "Map of node_public_ip_enabled values across all machine_learning_compute_clusters, keyed the same as var.machine_learning_compute_clusters"
  value       = { for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : k => v.node_public_ip_enabled if v.node_public_ip_enabled != null }
}
output "machine_learning_compute_clusters_scale_settings" {
  description = "Map of scale_settings values across all machine_learning_compute_clusters, keyed the same as var.machine_learning_compute_clusters"
  value       = { for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : k => v.scale_settings if v.scale_settings != null && length(v.scale_settings) > 0 }
}
output "machine_learning_compute_clusters_ssh" {
  description = "Map of ssh values across all machine_learning_compute_clusters, keyed the same as var.machine_learning_compute_clusters"
  value       = { for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : k => v.ssh if v.ssh != null && length(v.ssh) > 0 }
  sensitive   = true
}
output "machine_learning_compute_clusters_ssh_public_access_enabled" {
  description = "Map of ssh_public_access_enabled values across all machine_learning_compute_clusters, keyed the same as var.machine_learning_compute_clusters"
  value       = { for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : k => v.ssh_public_access_enabled if v.ssh_public_access_enabled != null }
}
output "machine_learning_compute_clusters_subnet_resource_id" {
  description = "Map of subnet_resource_id values across all machine_learning_compute_clusters, keyed the same as var.machine_learning_compute_clusters"
  value       = { for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : k => v.subnet_resource_id if v.subnet_resource_id != null && length(v.subnet_resource_id) > 0 }
}
output "machine_learning_compute_clusters_tags" {
  description = "Map of tags values across all machine_learning_compute_clusters, keyed the same as var.machine_learning_compute_clusters"
  value       = { for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "machine_learning_compute_clusters_vm_priority" {
  description = "Map of vm_priority values across all machine_learning_compute_clusters, keyed the same as var.machine_learning_compute_clusters"
  value       = { for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : k => v.vm_priority if v.vm_priority != null && length(v.vm_priority) > 0 }
}
output "machine_learning_compute_clusters_vm_size" {
  description = "Map of vm_size values across all machine_learning_compute_clusters, keyed the same as var.machine_learning_compute_clusters"
  value       = { for k, v in azurerm_machine_learning_compute_cluster.machine_learning_compute_clusters : k => v.vm_size if v.vm_size != null && length(v.vm_size) > 0 }
}

