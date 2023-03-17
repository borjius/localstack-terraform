module "s3-bucketlog" {
  source = "../../../../../modules/s3"

  bucket_name = "my-bucket"
}