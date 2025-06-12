resource "aws_instance" "roboshop" {
  # for_each = toset(var.instance_names)
  ami           = data.aws_ami.example.id
  instance_type = "t2.micro"

  tags = {
    Name = "roboshop"
  }
}