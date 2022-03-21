resource "aws_s3_bucket" "tenable_cs_demo_s3_bucket" {
  bucket = "tenablecsdemos3bucket"
  acl    = "private"
  tags   = var.default_tags
}