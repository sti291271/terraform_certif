# Test code
resource "aws_s3_bucket" "seb_bucket" {
  bucket = "my-tf-certif-bucket"
  acl    = "private"

  tags = {
    Name        = "Certification"
    Environment = "test"
  }
}

resource "aws_s3_bucket_object" "seb_bucket_object" {
  count = var.seb_condition ? 1 : 0
  bucket = aws_s3_bucket.seb_bucket.id
  key        = "seb_test"
}
 
