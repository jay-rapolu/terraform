//everything is resource in terraform to create any resource the syntax is:
//resource "resource_module" "name"{  }

resource "aws_instance" "roboshop" {
  # for_each = toset(var.instance_names)
  ami           = var.ami_id
  instance_type = var.environment == "dev" ? var.instance_type : "t3.small"
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]

  tags = {
    Name = "roboshop"
  }
}

resource "aws_security_group" "allow_all" {
  name        = var.sg_name
  description = var.sg_description

  tags = var.sg_tags

  dynamic "ingress" {
    for_each = var.ports
    content{
      from_port        = ingress.value["from_port"]
      to_port          = ingress.value["to_port"]
      protocol         = "6"
      cidr_blocks      = var.cidr_blocks
      ipv6_cidr_blocks = ["::/0"]
    }
  }
  egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }
}