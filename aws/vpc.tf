resource "aws_vpc" "tenable_cs_demo_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = merge(
    var.default_tags,
    {
      Name = "tenable_cs_demo_vpc"
    }
  )
}