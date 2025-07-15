provider "aws" {}
variable "ami" {
  default = "ami-09c813fb71547fc4f"
}
variable "instance_type" {
  default = "t3.small"
}
# 1
resource "aws_instance" "frontend" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "frontend"
  }
}
# 2
resource "aws_instance" "mongodb" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "mongodb"
  }
}
# 3
resource "aws_instance" "cart" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "cart"
  }
}
# 4
resource "aws_instance" "catalogue" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "catalogue"
  }
}
# 5
resource "aws_instance" "dispatch" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "dispatch"
  }
}
# 6
resource "aws_instance" "mysql" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "mysql"
  }
}
# 7
resource "aws_instance" "payment" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "payment"
  }
  # 8
}resource "aws_instance" "rabbitmq" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "rabbitmq"
  }
}
# 9
resource "aws_instance" "redis" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "redis"
  }
}
# 10
resource "aws_instance" "shipping" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "shipping"
  }
}
# 11
resource "aws_instance" "user" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "user"
  }
}


