resource "aws_s3_bucket" "tenable_cs_demo_s3_bucket" {
  bucket = "tenablecsdemos3bucket"
  acl    = "public-read"
  tags   = var.default_tags
}
resource "aws_s3_bucket_server_side_encryption_configuration" "tenable_cs_demo_s3_bucketSseConfig" {
  bucket = aws_s3_bucket.tenable_cs_demo_s3_bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}