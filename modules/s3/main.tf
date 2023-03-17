variable "bucket_name" {
  description = "the name of the s3 bucket"
}

resource "aws_s3_bucket" "test-bucket" {
  bucket = var.bucket_name
}