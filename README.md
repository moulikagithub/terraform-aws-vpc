### AWS VPC Module

This module creates following resources. we are using HA we are getting first 2AZ automatically.
*vpc
*Internet gateway
* 2 public subnet in 1a and 1b
* 2 private subnet in 1a and 1b
* 2 database subnet in 1a and 1b
* Elastic IP
* Nat gateway in 1a public subnet
* public Route Table
* private Route Table
* database Route Table
* Subnet and Route table Associations
* vpc peering if user requests
* Adding the peering route in default vpc,if user donot provider acceptor vpc explicitly
* Adding the peering route in public,private and database route tables
### Inputs
* project_name(required)-your project name
* environment(required)-which environment you are working in
* vpc_cidr(optional)-default value is 10.0.0.0/16, user can override
* enable_dns_hostnames(optional)-Default value is true
* common_tags(optional)-Better to provide
* vpc_tags(optional)
* igw_tags(optional)
* public_subnet_cidr(required)-user must provide 2 cidr
* public_subnets_tags(optional)
* private_subnet_cidr(required)-user must provide 2 cidr
* private_subnets_tags(optional)
* database_subnet_cidr(required)-user must provide 2 cidr
* database_subnets_tags(optional)