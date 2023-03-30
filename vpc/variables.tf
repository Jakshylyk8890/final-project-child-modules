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
}
