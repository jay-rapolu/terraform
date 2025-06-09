//everything is resource in terraform to create any resource the syntax is:
//resource "resource_module" "name"{  }
resource "aws_instance" "roboshop" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]

  tags = {
    Name = "roboshop"
  }
}

resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Allow all traffic from internet"

  tags = {
    Name = "allow_all"
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}