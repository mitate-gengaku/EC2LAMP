module "network" {
  source = "../modules/network"

  cidr_block = "10.0.0.0/16"
  vpc_name   = "vpc"
}

module "compute" {
  source = "../modules/compute"

  sg_id     = module.network.sg_id
  subnet_id = module.network.subnet_id

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    EOF

  ec2_name = "ec2-t2-micro"
}
