resource "aws_s3_bucket" "tenable_cs_demo_s3_bucket" {
  bucket = "tenablecsdemos3bucket"
  acl    = "public-read"
  tags   = var.default_tags
}
resource aws_s3_bucket_versioning example {
  bucket = aws_s3_bucket.tenablecsdemos3bucket.bucket

  versioning_configuration {
    status = Enabled
  }
}