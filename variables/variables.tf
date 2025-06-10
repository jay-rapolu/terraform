variable "ami_id"{
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type"{
    type = string
    default = "t2.micro"
}

variable "instance_tags"{
    type = map
    default = {
        Name = "roboshop"
    }
}

variable "sg_name"{
    type = string
    default = "variables_allow_all"
}

variable "sg_description"{
    type = string
    default = "Allow all traffic from internet"
}

variable "sg_tags"{
    type = map
    default = {
        Name = "allow_all"
    }
}

variable "from_port"{
    type = number
    default = 0
}

variable "to_port"{
    type = number
    default = 0
}

variable "cidr_blocks"{
    type = list(string)
    default = ["0.0.0.0/0"]
}