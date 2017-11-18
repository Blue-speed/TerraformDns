data "aws_route53_zone" "bluespeedus" {
  name         = "bluespeed.us."
  private_zone = false
}

resource "aws_route53_record" "zohoVerify" {
  zone_id = "${data.aws_route53_zone.bluespeedus.zone_id}"
  name    = "zb14237749"
  type    = "CNAME"
  ttl     = "300"
  records = ["zmverify.zoho.com."]
}

resource "aws_route53_record" "spf" {
  zone_id = "${data.aws_route53_zone.bluespeedus.zone_id}"
  name    = ""
  type    = "TXT"
  ttl     = "300"
  records = ["v=spf1 mx include:zoho.com ~all"]
}

resource "aws_route53_record" "mx1" {
  zone_id = "${data.aws_route53_zone.bluespeedus.zone_id}"
  name    = ""
  type    = "MX"
  ttl     = "300"
  records = ["10 mx.zoho.com."]
}

resource "aws_route53_record" "mx2" {
  zone_id = "${data.aws_route53_zone.bluespeedus.zone_id}"
  name    = ""
  type    = "MX"
  ttl     = "300"
  records = ["20 mx2.zoho.com."]
}
