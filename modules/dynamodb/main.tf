variable "table_name" {
  description = "table name"
}

variable "hash_key" {
  description = "Hash key and unique attribute"
}

variable "read_capacity" {
  description = "Read capacity"
}

variable "write_capacity" {
  description = "Write capacity"
}


resource "aws_dynamodb_table" "my-table-local-us1" {
  hash_key = var.hash_key
  name     = var.table_name
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  attribute {
    name = var.hash_key
    type = "S"
  }
}