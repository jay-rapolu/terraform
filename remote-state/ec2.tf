resource "aws_instance" "roboshop"{
  count = length(var.instance_names)
  ami           = var.ami_id
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]

  tags = {
    Name = "${var.project}-${var.instance_names[count.index]}"
  }
}

resource "aws_security_group" "allow_all" {
  name        = "${var.project}-${var.sg_name}"
  description = var.sg_description

  ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

   tags = merge(
      var.common_tags,
      {
        Name = "${var.project}-${var.sg_name}"
      }
   )
}