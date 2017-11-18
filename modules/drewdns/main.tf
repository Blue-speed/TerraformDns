variable "domain" {
    type = "string"
}
variable "dkim" { 
    type = "string"
    default = ""
}

output "zone_id" {
  value  = "${data.aws_route53_zone.zone.zone_id}"
}

data "aws_route53_zone" "zone" {
  name         = "${var.domain}"
  private_zone = false
}

resource "aws_route53_record" "spf" {
  zone_id = "${data.aws_route53_zone.zone.zone_id}"
  name    = ""
  type    = "TXT"
  ttl     = "300"
  records = ["v=spf1 mx include:zoho.com ~all"]
}

resource "aws_route53_record" "dkim" {
  zone_id = "${data.aws_route53_zone.zone.zone_id}"
  name    = "zoho._domainkey"
  type    = "TXT"
  ttl     = "300"
  records = ["${var.dkim}"]
}

resource "aws_route53_record" "mx1" {
  zone_id = "${data.aws_route53_zone.zone.zone_id}"
  name    = ""
  type    = "MX"
  ttl     = "300"
  records = ["10 mx.zoho.com.", "20 mx2.zoho.com.", "30 mx3.zoho.com."]
}
