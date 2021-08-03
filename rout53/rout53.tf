# resource "aws_route53_record" "www" {
#   zone_id = aws_route53_zone.id
#   name    = "blog.missadam.com"
#   type    = "A"
#   ttl     = "300"
#   records = "127.0.0.1"
# }