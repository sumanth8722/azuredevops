module "eks_cluster" {
  source      = "../modules"
  environment = var.environment
  vpc_cidr = var.vpc_cidr
  vpc = var.vpc
  region = var.region
  node_group_instance_type1 = var.node_group_instance_type1
  node_group_instance_type2 = var.node_group_instance_type2
  node_group1_name = var.node_group1_name
  node_group2_name = var.node_group2_name
  subnet1_cidr = var.subnet1_cidr
  subnet2_cidr = var.subnet2_cidr
  clustername = var.clustername
}