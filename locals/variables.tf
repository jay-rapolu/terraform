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

variable "instance_names"{
    type = list(string)
    default = ["mongodb", "mysql", "redis", "rabbitmq"]
}

variable "environment"{
    type = string
    default = "dev"
}

variable "domain"{
    type = string
    default = "joindevops.com"
}

variable "zone_id"{
    type = string
    default = "Z06964512FQ47JZ19W0YM"
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

variable "ports"{
    type = list
    default = [
        {
            from_port = 22
            to_port =22
        },
        {
            from_port = 443
            to_port = 443
        },
        {
            from_port = 8080
            to_port = 8080
        }
    ]
}

variable "cidr_blocks"{
    type = list(string)
    default = ["0.0.0.0/0"]
}