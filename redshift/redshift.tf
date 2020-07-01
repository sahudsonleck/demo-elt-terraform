###########
# Region
###########
provider "aws" {
	region = "us-west-2"
}

###########################
# Security group
###########################
#module "sg" {
#  source  = "terraform-aws-modules/security-group/aws//modules/redshift"
#  version = "~> 3.0"

#  name   = "demo-redshift"
#  vpc_id = module.vpc.vpc_id

#  # Allow ingress rules to be accessed only within current VPC
#  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]

#  # Allow all rules for all protocols
#  egress_rules = ["all-all"]
#}

###########
# Redshift
###########
resource "aws_redshift_cluster" "default" {
	cluster_identifier 	= "demo-redshift"
	database_name 		= "demo"
	master_username 	= "prnc_user"
	master_password 	= "YqKAe3G!!JedALo-ZQ3uPhS"
	node_type 		= "dc1.large"
	cluster_type 		= "single-node"
	skip_final_snapshot	= "true"
 	#subnets                = module.vpc.redshift_subnets
 	#vpc_security_group_ids = [module.sg.this_security_group_id]
}

resource "aws_redshift_snapshot_schedule" "default" {
	identifier 		= "tf-redshift-snapshot-schedule"
	definitions 		= ["rate(12 hours)"]
}

resource "aws_redshift_snapshot_schedule_association" "default"{
  cluster_identifier  = "${aws_redshift_cluster.default.id}"
  schedule_identifier = "${aws_redshift_snapshot_schedule.default.id}"
}	

