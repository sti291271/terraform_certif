# Test code
resource "aws_s3_bucket" "seb_bucket" {
  count = var.seb_condition == "true" ? 1 : 0
  bucket = "my-tf-certif-bucket"
  acl    = "private"

  tags = {
    Name        = "Certification"
    Environment = "test"
  }
}

resource "aws_s3_bucket_object" "seb_bucket_object" {
  count = var.seb_condition == "true" ? 1 : 0
  bucket = aws_s3_bucket.seb_bucket[0].id
  key        = "seb_test"
}
