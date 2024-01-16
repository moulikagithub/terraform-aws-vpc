variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}
variable "enable_dns_hostnames" {
  type = bool
  default = true
}
variable "common_tags" {
  type = map
  default = {}
}

variable "vpc_tags" {
  type = map
   default = {}
}
variable "projectname" {
  
}
variable "environment" {
  
}
variable "igw_tags" {
   type = map
   default = {}
}
variable "public_subnet_cidr" {
  type = list
  validation {
     condition = length(var.public_subnet_cidr) == 2
     error_message = "more than two cidr_blocks are given"
  }
}
variable "public_subnet_tags" {
  type = map
  default = {}
}
variable "private_subnet_cidr" {
  type = list
  validation {
     condition = length(var.private_subnet_cidr) == 2
     error_message = "more than two cidr_blocks are given"
  }
}
variable "private_subnet_tags" {
  type = map
  default = {}
}
variable "database_subnet_cidr" {
  type = list
  validation {
     condition = length(var.database_subnet_cidr) == 2
     error_message = "more than two cidr_blocks are given"
  }
}
variable "database_subnet_tags" {
  type = map
  default = {}
}
variable "nat_gateway_tags" {
  type = map
  default = {}
}
variable "public_rt_tags" {
  type = map
  default = {}
}
variable "private_rt_tags" {
  type = map
  default = {}
}
variable "database_rt_tags" {
  type = map
  default = {}
}
variable "is_peering_required" {
  type = bool
  default = false
}

variable "acceptor_vpc_id" {
  type = string
  default = ""
}
variable "vpc_peer_tags" {
  type = map
  default = {}
}
