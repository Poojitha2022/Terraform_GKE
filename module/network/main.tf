resource "google_compute_network" "wp_vpc" {
  name                    = var.vpc_network
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "app_subnet" {
  name          =  var.subnet
  ip_cidr_range =  var.app_cidr_range
  region        =  var.region
  network       = google_compute_network.wp_vpc.self_link
  secondary_ip_range = [
      {
        range_name    = var.ip_range_pods_name
        ip_cidr_range = var.ip_range_pods_range
      },
      {
        range_name    = var.ip_range_services_name
        ip_cidr_range = var.ip_range_services_range
      }
]
}

resource "google_compute_subnetwork" "db_subnet" {
  name          =  var.subnet2
  ip_cidr_range =  var.db_cidr_range
  region        =  var.region
  network       =  google_compute_network.wp_vpc.self_link
}

resource "google_compute_firewall" "ssh" {
  name = var.firewall
  allow {
    ports    = var.port
    protocol = var.protocol
  }
  direction     = var.traffic_type
  network       = google_compute_network.wp_vpc.self_link
  source_ranges = var.source_ranges
}
