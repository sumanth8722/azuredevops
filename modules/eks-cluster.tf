module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "18.26.6"

  cluster_name    = "${var.clustername}-${var.environment}"
  cluster_version = "1.22"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"

    attach_cluster_primary_security_group = false
    create_security_group = false
  }

  eks_managed_node_groups = {
    one = {
      name = var.node_group1_name

      instance_types = [ var.node_group_instance_type1 ]

      min_size     = 1
      max_size     = 3
      desired_size = 2

      vpc_security_group_ids = [
        aws_security_group.node_group_one.id
      ]
    }

    two = {
      name = var.node_group2_name
      instance_types = [ var.node_group_instance_type2 ]

      min_size     = 1
      max_size     = 3
      desired_size = 2

      vpc_security_group_ids = [
        aws_security_group.node_group_two.id
      ]
    }


  }
}
