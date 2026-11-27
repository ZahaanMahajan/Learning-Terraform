output "ami_id" {
  description = "Selected Amazon Linux 2023 AMI ID"
  value       = data.aws_ami.amazon_linux.id
}

output "ami_name" {
  description = "Selected Amazon Linux 2023 AMI name"
  value       = data.aws_ami.amazon_linux.name
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.web.id
}

output "private_ip" {
  description = "Private IP address of EC2"
  value       = aws_instance.web.private_ip
}

output "instance_type" {
  description = "EC2 instance type"
  value       = aws_instance.web.instance_type
}
