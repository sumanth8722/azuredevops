variable "environment" {
  type        = string
  default = " "
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "vpc" {
  type    = string
  default = "DemoEKS"
}

variable "clustername" {
  type    = string
  default = "DemoEKS"
}

variable "subnet1_cidr" {
 type=list
 default=["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "subnet2_cidr" {
 type=list
 default=["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "node_group_instance_type1" {
 type=string
 default="t3.small"
}

variable "node_group_instance_type2" {
 type=string
 default="t3.small"
}

variable "vpc_cidr" {
 type=string
 default="10.0.0.0/16"
}

variable "node_group1_name" {
 type=string
 default="group1"
}

variable "node_group2_name" {
 type=string
 default="group2"
}
