locals {
  application = {
    name        = "terraform-learning"
    environment = "dev"
    version     = "1.0.0"
  }
}

output "application_name" {
  description = "Name of the application"
  value       = local.application.name
}

output "application_config" {
  description = "Application Configuration"
  value       = local.application
}

output "application_environment" {
  description = "Deployment environment"
  value       = local.application.environment
}
