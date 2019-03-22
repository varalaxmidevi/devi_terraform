resource "aws_s3_bucket" "bucket" {
  bucket = "bucket-mar-21"
  acl    = "private"

  tags = {
    Name        = "tform-bucket"
    Environment = "Dev"
  }
}


