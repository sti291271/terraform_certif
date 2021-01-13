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
  bucket = aws_s3_bucket.seb_bucket.id
  key        = "seb_test"
}
