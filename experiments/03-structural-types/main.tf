// Object type 
output "instance_config" {
  value = var.instance_config
}

output "instance_type" {
  value = var.instance_config.instance_type
}

output "instance_count" {
  value = var.instance_config.instance_count
}

output "monitoring" {
  // Alternative Syntax
  value = var.instance_config["monitoring"]
}

// Tuple type 
output "instance_details" {
  value = var.instance_details
}

output "instance_type_2" {
  value = var.instance_details[0]
}

output "instance_count_2" {
  value = var.instance_details[1]
}

output "monitoring_2" {
  value = var.instance_details[2]
}

