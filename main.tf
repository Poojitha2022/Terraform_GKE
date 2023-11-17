terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.67.0"
    }
        null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }
}

provider "google" {
  credentials = file("./infra.json")
  project = "project1-378704"
  region  = var.region
  zone    = var.location
}

module "network" {
  source = "./module/network"
  vpc_network = var.vpc_network
  subnet = var.subnet
  app_cidr_range = var.app_cidr_range
  region = var.region
  ip_range_pods_name = var.ip_range_pods_name
  ip_range_pods_range = var.ip_range_pods_range
  ip_range_services_name = var.ip_range_services_name
  ip_range_services_range = var.ip_range_services_range
  subnet2 = var.subnet2
  db_cidr_range = var.db_cidr_range
  firewall = var.firewall
  port = var.port
  protocol = var.protocol
  traffic_type = var.traffic_type
  source_ranges = var.source_ranges
  location = var.location
}

module "sql" {
  source = "./module/database"
  db_instance = var.db_instance
  db_version = var.db_version
  region = var.region
  db_machine_type = var.db_machine_type
  database_name  = var.database_name
  db_username = var.db_username
  db_password = var.db_password
}

module "gke" {
 source = "./module/cluster"
 cluster_name = var.cluster_name
 location = var.location
 vpc_network = var.vpc_network
 subnet = var.subnet
 initial_node_count = var.initial_node_count
 nodepool_name = var.nodepool_name
 nodepool_machine_type = var.nodepool_machine_type
 nodepool_disk_size_gb = var.nodepool_disk_size_gb
 nodepool_disk_type = var.nodepool_disk_type
 kubeconfig_filename = var.kubeconfig_filename
}

module "k8-provider" {
  source ="./module/k8-provider"
}

module "gke_auth" {
  source = "terraform-google-modules/kubernetes-engine/google//modules/auth"
  depends_on   = [module.gke]
  project_id   = "project1-378704"
  location     = var.location
  cluster_name = var.cluster_name
}

resource "local_file" "kubeconfig" {
  content  = module.gke_auth.kubeconfig_raw
  filename = var.kubeconfig_filename
}

module "storage" {
 source = "./module/storage"
 bucket_name = var.bucket_name
 region = var.region
 object_name = var.object_name
 object_path = var.object_path
}