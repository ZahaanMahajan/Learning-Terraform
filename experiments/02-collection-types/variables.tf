variable "environments" {
  description = "Deployment environments"
  type        = list(string)
  default     = ["dev", "staging", "production"]
}

variable "aws_regions" {
  description = "AWS regions used by the project"
  type        = set(string)
  default     = ["ap-south-1", "us-east-1"]
}

variable "resource_tags" {
  description = "Common infrastructure tags"
  type        = map(string)

  default = {
    Environment = "Learning"
    ManagedBy   = "Terraform"
  }
}
