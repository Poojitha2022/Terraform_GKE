variable "db_instance" {
  description = "The name of the SQL instance"
  type = string
}

variable "db_version" {
  description = "The DB version of the SQL instance"
  type = string
}

variable "region" {
  description = "The region to host the cluster"
  type = string
}

variable "db_machine_type" {
  description = "The machine type of the SQL instance"
  type = string
}

variable "database_name" {
  description = "The database name of the SQL"
  type = string
}

variable "db_username" {
  description = "The username for accessing SQL DB"
  type = string
}

variable "db_password" {
  description = "The password for accessing SQL DB"
  type = string
}