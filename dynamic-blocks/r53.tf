resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = "${aws_instance.roboshop.tags.Name}"
  type    = "A"
  ttl     = 1
  records = [ aws_instance.roboshop.private_ip ]
}