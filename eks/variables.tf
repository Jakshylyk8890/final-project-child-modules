// ﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏𝐕𝐀𝐑𝐈𝐀𝐁𝐋𝐄𝐒﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏﹏
variable "vpc_cidr" {
    default = "10.5.0.0/16"
    description = "VPC CIDR "
}

variable "env" {
    type = string
    default = "jaks"
    description = "specified resources enviroment"
}
variable "public_subnet_cidr" {

    default = [
        "10.5.1.0/24",
        "10.5.2.0/24",
        "10.5.3.0/24",
    ]
  description = "CIDR of the public subnets"
}


variable "ingress" {
   default = ["0"]
   description = "specified multiple times for each ingress rule"
}

variable "vpc"{
      type = string
      default = ""
      description = "ID of the vpc"
}



locals {
  node_group= {
    
    node_group_name = "${var.env}node-group1"
   
   }
}
