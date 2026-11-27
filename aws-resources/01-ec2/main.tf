data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-kernel-*-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

data "aws_subnet" "selected" {
  id = "subnet-0c3fe7504a3e7d4fe"
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  subnet_id     = data.aws_subnet.selected.id

  associate_public_ip_address = false

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name        = "terraform-ec2"
    Environment = "Learning"
    ManagedBy   = "Terraform"
  }
}
