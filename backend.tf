terraform {
  backend "s3" {
    bucket = "my-bucket-tf-backend"
    key    = "AWSDynamoDB/01725979000272-84542b18/data/ov4nobrqke35zfseh2gsc2b3ky.json.gz"
    region = "eu-west-3"
  }
}
