variable "machine_learning_compute_clusters" {
  description = <<EOT
Map of machine_learning_compute_clusters, attributes below
Required:
    - location
    - machine_learning_workspace_id
    - name
    - vm_priority
    - vm_size
    - scale_settings (block):
        - max_node_count (required)
        - min_node_count (required)
        - scale_down_nodes_after_idle_duration (required)
Optional:
    - description
    - local_auth_enabled
    - node_public_ip_enabled
    - ssh_public_access_enabled
    - subnet_resource_id
    - tags
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - ssh (block):
        - admin_password (optional)
        - admin_username (required)
        - key_value (optional)
EOT

  type = map(object({
    location                      = string
    machine_learning_workspace_id = string
    name                          = string
    vm_priority                   = string
    vm_size                       = string
    description                   = optional(string)
    local_auth_enabled            = optional(bool, true)
    node_public_ip_enabled        = optional(bool, true)
    ssh_public_access_enabled     = optional(bool, false)
    subnet_resource_id            = optional(string)
    tags                          = optional(map(string))
    scale_settings = object({
      max_node_count                       = number
      min_node_count                       = number
      scale_down_nodes_after_idle_duration = string
    })
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    ssh = optional(object({
      admin_password = optional(string)
      admin_username = string
      key_value      = optional(string)
    }))
  }))
}

