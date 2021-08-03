resource "aws_route53_record" "www" {
  zone_id = "Z07310871ZNVMWSIHPDCZ"
  name    = "blog.missadam.com"
  type    = "A"
  ttl     = "300"
  records = ["127.0.0.1"]
}