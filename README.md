This Terraform module creates the following

1. Create a NEW VPC for each ENV, Along with given number of SUBNETS
2. Create a Peering Connection to New VPC to Default VPC. 
3. Exports the data of Route53 Hosted IDs 
4. NAT and IGW for internet