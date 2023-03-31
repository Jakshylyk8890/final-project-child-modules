provider "aws" {
  region = "us-east-1"
}

module "networking" {
  source              = "git::https://github.com/Mitya00/aws-terraform-finalmodule.git//vpc?ref=main"
  env                 = "dev"
  subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
  vpc_cidr            = "10.0.0.0/16"
  

}

module "eks" {
  source = "git::https://github.com/Mitya00/aws-terraform-finalmodule.git//eks?ref=main"
env = "dev"
vpc_id = module.networking.vpc_id
privet_subnet_ids = module.networking.public_subnets
}
