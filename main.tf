resource "aws_ses_domain_identity" "example" {
  domain = "hetchly.com"
}

resource "aws_ses_domain_dkim" "example" {
  domain = "hetchly.com"
}

resource "aws_route53_record" "example_amazonses_verification_record" {
  zone_id = "ABCDEFGHIJ123"
  name    = "_amazonses.example.com"
  type    = "TXT"
  ttl     = "600"
  records = ["${aws_ses_domain_identity.example.verification_token}"]
}

resource "aws_ses_domain_identity_verification" "example_verification" {
  domain = "${aws_ses_domain_identity.example.id}"
  depends_on = ["aws_route53_record.example_amazonses_verification_record"]
}

resource "aws_ses_receipt_filter" "filter" {
  name   = "allow-all"
  cidr   = "0.0.0.0"
  policy = "Allow"
}
