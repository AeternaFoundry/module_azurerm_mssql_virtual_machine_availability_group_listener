output "mssql_virtual_machine_availability_group_listeners_id" {
  description = "Map of id values across all mssql_virtual_machine_availability_group_listeners, keyed the same as var.mssql_virtual_machine_availability_group_listeners"
  value       = { for k, v in azurerm_mssql_virtual_machine_availability_group_listener.mssql_virtual_machine_availability_group_listeners : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mssql_virtual_machine_availability_group_listeners_availability_group_name" {
  description = "Map of availability_group_name values across all mssql_virtual_machine_availability_group_listeners, keyed the same as var.mssql_virtual_machine_availability_group_listeners"
  value       = { for k, v in azurerm_mssql_virtual_machine_availability_group_listener.mssql_virtual_machine_availability_group_listeners : k => v.availability_group_name if v.availability_group_name != null && length(v.availability_group_name) > 0 }
}
output "mssql_virtual_machine_availability_group_listeners_load_balancer_configuration" {
  description = "Map of load_balancer_configuration values across all mssql_virtual_machine_availability_group_listeners, keyed the same as var.mssql_virtual_machine_availability_group_listeners"
  value       = { for k, v in azurerm_mssql_virtual_machine_availability_group_listener.mssql_virtual_machine_availability_group_listeners : k => one(v.load_balancer_configuration) if v.load_balancer_configuration != null && length(v.load_balancer_configuration) > 0 }
}
output "mssql_virtual_machine_availability_group_listeners_multi_subnet_ip_configuration" {
  description = "Map of multi_subnet_ip_configuration values across all mssql_virtual_machine_availability_group_listeners, keyed the same as var.mssql_virtual_machine_availability_group_listeners"
  value       = { for k, v in azurerm_mssql_virtual_machine_availability_group_listener.mssql_virtual_machine_availability_group_listeners : k => v.multi_subnet_ip_configuration if v.multi_subnet_ip_configuration != null && length(v.multi_subnet_ip_configuration) > 0 }
}
output "mssql_virtual_machine_availability_group_listeners_name" {
  description = "Map of name values across all mssql_virtual_machine_availability_group_listeners, keyed the same as var.mssql_virtual_machine_availability_group_listeners"
  value       = { for k, v in azurerm_mssql_virtual_machine_availability_group_listener.mssql_virtual_machine_availability_group_listeners : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mssql_virtual_machine_availability_group_listeners_port" {
  description = "Map of port values across all mssql_virtual_machine_availability_group_listeners, keyed the same as var.mssql_virtual_machine_availability_group_listeners"
  value       = { for k, v in azurerm_mssql_virtual_machine_availability_group_listener.mssql_virtual_machine_availability_group_listeners : k => v.port if v.port != null }
}
output "mssql_virtual_machine_availability_group_listeners_replica" {
  description = "Map of replica values across all mssql_virtual_machine_availability_group_listeners, keyed the same as var.mssql_virtual_machine_availability_group_listeners"
  value       = { for k, v in azurerm_mssql_virtual_machine_availability_group_listener.mssql_virtual_machine_availability_group_listeners : k => v.replica if v.replica != null && length(v.replica) > 0 }
}
output "mssql_virtual_machine_availability_group_listeners_sql_virtual_machine_group_id" {
  description = "Map of sql_virtual_machine_group_id values across all mssql_virtual_machine_availability_group_listeners, keyed the same as var.mssql_virtual_machine_availability_group_listeners"
  value       = { for k, v in azurerm_mssql_virtual_machine_availability_group_listener.mssql_virtual_machine_availability_group_listeners : k => v.sql_virtual_machine_group_id if v.sql_virtual_machine_group_id != null && length(v.sql_virtual_machine_group_id) > 0 }
}

