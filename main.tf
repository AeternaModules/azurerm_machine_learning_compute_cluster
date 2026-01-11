resource "azurerm_machine_learning_compute_cluster" "machine_learning_compute_clusters" {
  for_each = var.machine_learning_compute_clusters

  location                      = each.value.location
  machine_learning_workspace_id = each.value.machine_learning_workspace_id
  name                          = each.value.name
  vm_priority                   = each.value.vm_priority
  vm_size                       = each.value.vm_size
  description                   = each.value.description
  local_auth_enabled            = each.value.local_auth_enabled
  node_public_ip_enabled        = each.value.node_public_ip_enabled
  ssh_public_access_enabled     = each.value.ssh_public_access_enabled
  subnet_resource_id            = each.value.subnet_resource_id
  tags                          = each.value.tags

  scale_settings {
    max_node_count                       = each.value.scale_settings.max_node_count
    min_node_count                       = each.value.scale_settings.min_node_count
    scale_down_nodes_after_idle_duration = each.value.scale_settings.scale_down_nodes_after_idle_duration
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }

  dynamic "ssh" {
    for_each = each.value.ssh != null ? [each.value.ssh] : []
    content {
      admin_password = ssh.value.admin_password
      admin_username = ssh.value.admin_username
      key_value      = ssh.value.key_value
    }
  }
}

