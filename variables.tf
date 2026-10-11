variable "mssql_virtual_machine_availability_group_listeners" {
  description = <<EOT
Map of mssql_virtual_machine_availability_group_listeners, attributes below
Required:
    - name
    - sql_virtual_machine_group_id
    - replica (block):
        - commit (required)
        - failover_mode (required)
        - readable_secondary (required)
        - role (required)
        - sql_virtual_machine_id (required)
Optional:
    - availability_group_name
    - port
    - load_balancer_configuration (block):
        - load_balancer_id (required)
        - private_ip_address (required)
        - probe_port (required)
        - sql_virtual_machine_ids (required)
        - subnet_id (required)
    - multi_subnet_ip_configuration (block):
        - private_ip_address (required)
        - sql_virtual_machine_id (required)
        - subnet_id (required)
EOT

  type = map(object({
    name                         = string
    sql_virtual_machine_group_id = string
    availability_group_name      = optional(string)
    port                         = optional(number)
    replica = list(object({
      commit                 = string
      failover_mode          = string
      readable_secondary     = string
      role                   = string
      sql_virtual_machine_id = string
    }))
    load_balancer_configuration = optional(object({
      load_balancer_id        = string
      private_ip_address      = string
      probe_port              = number
      sql_virtual_machine_ids = set(string)
      subnet_id               = string
    }))
    multi_subnet_ip_configuration = optional(list(object({
      private_ip_address     = string
      sql_virtual_machine_id = string
      subnet_id              = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.mssql_virtual_machine_availability_group_listeners : (
        length(v.replica) >= 1
      )
    ])
    error_message = "Each replica list must contain at least 1 items"
  }
}

