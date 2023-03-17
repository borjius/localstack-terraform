module "test-bucket-local-us1" {
  source = "./env/local-us1/s3"
  providers = {
    aws = aws.us-west-1
  }
}

module "dynamodb_mytable" {
  source = "./env/local-us1/dynamodb"
  providers = {
    aws = aws.us-west-1
  }
  table_name = "mytable"
  hash_key = "myAttribute"
}