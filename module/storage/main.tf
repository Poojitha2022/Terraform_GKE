resource "google_storage_bucket" "storage-bucket" {
  name          = var.bucket_name
  location      = var.region
  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "object" {
  name   = var.object_name
  source = var.object_path
  bucket = google_storage_bucket.storage-bucket.id
}