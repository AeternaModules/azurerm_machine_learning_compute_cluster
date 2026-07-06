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
    local_auth_enabled            = optional(bool) # Default: true
    node_public_ip_enabled        = optional(bool) # Default: true
    ssh_public_access_enabled     = optional(bool) # Default: false
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
  # --- Unconfirmed validation candidates, derived from azurerm_machine_learning_compute_cluster's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.ComputeClusterName] !ok
  # path: name
  #   source:    [from validate.ComputeClusterName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: vm_priority
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

