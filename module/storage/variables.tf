variable "bucket_name" {
  description = "The name of the bucket"
  type = string
}

variable "region" {
  description = "The region(location) of the bucket"
  type = string
}

variable "object_name" {
  description = "The name of the object in the bucket"
  type = string
}

variable "object_path" {
  description = "The path of the object in the bucket"
  type = string
}