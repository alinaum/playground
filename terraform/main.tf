# Configure the AWS Provider

provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "alineterraform"
    key    = "terraform-state.tfstate"
    region = "us-west-2"
  }
}

module "instances" {
  source = "./modules/ec2"
	blocks = var.blocks
	name = "Minha instancia ${var.name}"
}