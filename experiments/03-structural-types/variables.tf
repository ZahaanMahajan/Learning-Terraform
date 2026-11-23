variable "instance_config" {
  description = "Configuration for an EC2 instance"
  type = object({
    instance_type  = string
    instance_count = number
    monitoring     = bool
  })
  default = {
    instance_type  = "t3.micro"
    instance_count = 2
    monitoring     = true
  }
}

variable "instance_details" {
  type = tuple([string, number, bool])
  default = ["t3.micro", 2, true]
}
