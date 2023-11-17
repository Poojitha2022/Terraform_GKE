resource "google_container_cluster" "wp_gke" {
  name     = var.cluster_name
  location = var.location
  initial_node_count       = var.initial_node_count
  remove_default_node_pool = true
}

resource "google_container_node_pool" "wp_cluster_nodes" {
  name       = var.nodepool_name
  location   = var.location
  cluster    = google_container_cluster.wp_gke.name
  node_count = 1

  node_config {
    machine_type = var.nodepool_machine_type
    disk_size_gb = var.nodepool_disk_size_gb
    disk_type = var.nodepool_disk_type

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}
