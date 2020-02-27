provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

module "aws_dynamic_sg" {
  source = "../"
  name = "al-dynamic-sg1"
  description    = "testing dynamic rules"
  vpc_id = "vpc-0a027487e9e5ebf21"
  ingress_cidrs = [
    {
      from_port = "3389"
      to_port = "3389"
      protocol = "tcp"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port = "444"
      to_port = "444"
      protocol = "tcp"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}

