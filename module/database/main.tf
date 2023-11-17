resource "google_sql_database_instance" "sql_db" {
  name = var.db_instance
  database_version = var.db_version
  region       = var.region
  settings {
    tier = var.db_machine_type

     ip_configuration {
                ipv4_enabled = true
                require_ssl  = false

                authorized_networks {
                    name  = "wpSQLconnect"
                    value = "0.0.0.0/0"
                }
      }
   }
   deletion_protection  = "false"
}

resource "google_sql_database" "database" {
  name      = var.database_name
  instance  = google_sql_database_instance.sql_db.name
}

resource "google_sql_user" "users"{
  name     = var.db_username
  instance = google_sql_database_instance.sql_db.name
  password = var.db_password
}