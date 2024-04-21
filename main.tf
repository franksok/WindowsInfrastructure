provider "aws" {
  region = "eu-west-2"
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr = "10.2.0.0/16"
  subnet_cidrs = ["10.2.1.0/24", "10.2.2.0/24"]
  availability_zone = "eu-west-2a"
}


module "ec2" {
  source = "./modules/ec2"

  ami_id = "ami-04ae4ddfe3f32eb6e"
  instance_type = "t2.micro"
  subnets = module.vpc.subnet_ids
  vpc_id = module.vpc.vpc_id
  target_group = module.balancers.alb_tg_arn
}

module "balancers" {
  source = "./modules/balancers"

  public_subnets         = module.vpc.subnet_ids
  vpc_id                 = module.vpc.vpc_id

}
