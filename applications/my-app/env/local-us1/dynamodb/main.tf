variable "table_name" {
  description = "table name"
}

variable "hash_key" {
  description = "Hash key and unique attribute"
}

module "dynamody-table" {
  source = "../../../../../modules/dynamodb"

  table_name = var.table_name
  read_capacity = 20
  hash_key = var.hash_key
  write_capacity = 20
}