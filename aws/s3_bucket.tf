resource "aws_s3_bucket" "tenable_cs_demo_s3_bucket" {
  bucket = "tenablecsdemos3bucket"
  acl    = "public-read"
  tags   = var.default_tags
}
resource "aws_s3_bucket_versioning" "tenable_cs_demo_s3_bucketVersionConfig" {
  bucket = aws_s3_bucket.tenable_cs_demo_s3_bucket.bucket
  versioning_configuration {
    status = "Enabled"
  }
}