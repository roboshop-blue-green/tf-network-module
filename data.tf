data "aws_route53_zone" "internal" {
  zone_id      = var.PRIVATE_HOSTED_ZONE_ID
  private_zone = true
}

//data "aws_route53_zone" "public" {
//  zone_id      = var.PUBLIC_HOSTED_ZONE_ID
//  private_zone = false
//}
