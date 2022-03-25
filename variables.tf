variable "VPC_CIDR" {
  description = "VPC CIDR"
}

variable "ENV" {}

variable "PUBLIC_SUBNETS" {
  description = "List of public subnet cidr"
}

variable "PRIVATE_SUBNETS" {
  description = "List of private subnet cidr"
}

variable "AZ" {
  description = "List of AZ that subnets to be created"
}

variable "PRIVATE_HOSTED_ZONE_ID" {
  description = "Route53 Internal Hosted Zone ID"
}

variable "DEFAULT_VPC_CIDR" {}
variable "DEFAULT_VPC_ID" {}

variable "DEFAULT_ROUTE_TABLE_ID" {
  description = "Route table id for making the peer connection to work"
}

