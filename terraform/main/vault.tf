# The MIT License (MIT)
#
# Copyright (c) 2014-2017 Avant, Sean Lingren

module "vault" {
  source = "../modules/vault"

  # Environment
  env            = "${ var.env }"
  region         = "${ var.region }"
  dr_region      = "${ var.dr_region }"
  aws_account_id = "${ var.aws_account_id }"
  tags           = "${ var.tags }"
  tags_asg       = "${ var.tags_asg }"

  # Networking
  vault_dns_address         = "${ var.vault_dns_address }"
  vpc_id                    = "${ var.vpc_id }"
  alb_subnets               = "${ var.alb_subnets }"
  ec2_subnets               = "${ var.ec2_subnets }"
  alb_allowed_ingress_cidrs = "${ var.alb_allowed_ingress_cidrs }"
  alb_allowed_egress_cidrs  = "${ var.alb_allowed_egress_cidrs }"

  # ALB
  alb_certificate_arn = "${ var.alb_certificate_arn }"

  # EC2
  ami_id               = "${ var.ami_id }"
  instance_type        = "${ var.instance_type }"
  ssh_key_name         = "${ var.ssh_key_name }"
  asg_min_size         = "${ var.asg_min_size }"
  asg_max_size         = "${ var.asg_max_size }"
  asg_desired_capacity = "${ var.asg_desired_capacity }"

  # S3
  vault_resources_bucket_name = "${ var.vault_resources_bucket_name }"
  vault_data_bucket_name      = "${ var.vault_data_bucket_name }"

  # DynamoDB
  dynamodb_table_name = "${ var.dynamodb_table_name }"
}
