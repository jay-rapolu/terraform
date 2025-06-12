variable "ami_id"{
    default = "ami-09c813fb71547fc4f"
}

variable "instance_names"{
    default = ["mongodb", "redis"]
}

# variable "environment" {

# }

variable "from_port"{
    default = 0
}

variable "to_port"{
    default = 0
}

variable "sg_name"{
    default = "allow_all"
}

variable "sg_description"{
    default = "Allow all traffic from internet"
}

variable "cidr_blocks"{
    default = ["0.0.0.0/0"]
}

variable "common_tags"{
    default = {
        Project = "roboshop"
        Version = "1.0"
    }
}

variable "project"{
    default = "roboshop"
}