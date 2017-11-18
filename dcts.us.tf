data "aws_route53_zone" "dctsus" {
  name         = "dcts.us."
  private_zone = false
}

resource "aws_route53_record" "zohoVerify" {
  zone_id = "${data.aws_route53_zone.dctsus.zone_id}"
  name    = "zb14237763"
  type    = "CNAME"
  ttl     = "300"
  records = ["zmverify.zoho.com."]
}

resource "aws_route53_record" "spf" {
  zone_id = "${data.aws_route53_zone.dctsus.zone_id}"
  name    = "@"
  type    = "TXT"
  ttl     = "300"
  records = ["v=spf1 mx include:zoho.com ~all"]
}

resource "aws_route53_record" "mx1" {
  zone_id = "${data.aws_route53_zone.dctsus.zone_id}"
  name    = "@"
  type    = "MX"
  ttl     = "300"
  records = ["mx.zoho.com.", "mx2.zoho.com."]
}
