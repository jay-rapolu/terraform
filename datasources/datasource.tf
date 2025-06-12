data "aws_ami" "example" {
  owners = ["973714476881"]
  most_recent = true

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {  
      name = "source-image-region"
      values = ["us-east-1"]
  }

}

# output "ami_name"{
#     value = data.aws_ami.example.id
# }