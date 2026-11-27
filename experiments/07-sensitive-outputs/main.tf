output "database_password" {
  description = "Database password"
  value       = var.database_password
  sensitive   = true
}

output "password_length" {
  description = "Length of the database password"
  value       = length(var.database_password)
  sensitive   = true
}
