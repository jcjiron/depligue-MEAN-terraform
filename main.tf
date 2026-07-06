provider "aws" {
  region = "us-east-1"
}

module "network" {
  source       = "./modules/network"
  project_name = "mean"
}

output "nat_ip" {
  value = module.network.nat_public_ip
}

output "subnets_publicas" {
  value = module.network.public_subnet_ids
}

output "subnets_privadas" {
  value = module.network.private_subnet_ids
}