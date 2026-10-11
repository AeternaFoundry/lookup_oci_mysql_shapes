output "mysql_shapes_lookup_id" {
  description = "Map of id values across all mysql_shapes_lookup, keyed the same as var.mysql_shapes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_mysql_shapes.mysql_shapes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mysql_shapes_lookup_availability_domain" {
  description = "Map of availability_domain values across all mysql_shapes_lookup, keyed the same as var.mysql_shapes_lookup except keys with no availability_domain are omitted"
  value       = { for k, v in data.oci_mysql_shapes.mysql_shapes_lookup : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "mysql_shapes_lookup_compartment_id" {
  description = "Map of compartment_id values across all mysql_shapes_lookup, keyed the same as var.mysql_shapes_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_mysql_shapes.mysql_shapes_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "mysql_shapes_lookup_filter" {
  description = "Map of filter values across all mysql_shapes_lookup, keyed the same as var.mysql_shapes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_mysql_shapes.mysql_shapes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "mysql_shapes_lookup_is_supported_for" {
  description = "Map of is_supported_for values across all mysql_shapes_lookup, keyed the same as var.mysql_shapes_lookup except keys with no is_supported_for are omitted"
  value       = { for k, v in data.oci_mysql_shapes.mysql_shapes_lookup : k => v.is_supported_for if v.is_supported_for != null && length(v.is_supported_for) > 0 }
}
output "mysql_shapes_lookup_name" {
  description = "Map of name values across all mysql_shapes_lookup, keyed the same as var.mysql_shapes_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_mysql_shapes.mysql_shapes_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mysql_shapes_lookup_shapes" {
  description = "Map of shapes values across all mysql_shapes_lookup, keyed the same as var.mysql_shapes_lookup except keys with no shapes are omitted"
  value       = { for k, v in data.oci_mysql_shapes.mysql_shapes_lookup : k => v.shapes if v.shapes != null && length(v.shapes) > 0 }
}

