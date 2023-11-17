variable "subnet" {
  description = "The subnetwork created to host the cluster"
  type = string
}

variable "region" {
  description = "The region to host the cluster"
  type = string
}

variable "app_cidr_range" {
    description = "The CIDR range for the Cluster"
    type = string
}

variable "ip_range_pods_name" {
  description = "The secondary ip range to use for pods"
  type = string
}

variable "ip_range_services_name" {
    description = "The secondary ip range to use for services"
    type = string
}

variable "ip_range_pods_range" {
  description = "The secondary ip range to use for pods"
  type = string
}

variable "ip_range_services_range" {
    description = "The secondary ip range to use for services"
    type = string
}

variable "subnet2" {
  description = "The subnetwork created for the SQL server"
  type = string
}

variable "db_cidr_range" {
    description = "The CIDR range for the SQL instance"
    type = string
}

variable "location" {
  description = "The location to host the cluster"
  type = string
}

variable "vpc_network" {
  description = "The VPC network created to host the cluster"
  type = string
}

variable "cluster_name" {
  description = "The name for the GKE cluster"
  type = string
}

variable "nodepool_name" {
  description = "The name of the node pool for the cluster"
  type = string
}

variable "db_instance" {
  description = "The name of the SQL instance"
  type = string
}

variable "db_version" {
  description = "The DB version of the SQL instance"
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

variable "firewall" {
  description = "The firewall to host the cluster"
  type = string
}

variable "port" {
  description = "The port number assigned for the firewall"
  type = list(string)
}

variable "protocol" {
  description = "The protocol that need to be assigned for the firewall"
  type = string
}

variable "traffic_type" {
  description = "The type of traffic (INGRESS/EGRESS) for firewall"
  type = string
}

variable "nodepool_machine_type" {
  description = "The machine type of the node pool instance"
  type = string
}

variable "nodepool_disk_type" {
  description = "The disk type of the node pool instance"
  type = string
}

variable "nodepool_disk_size_gb" {
  description = "The disk size of the node pool instance"
  type = number
}

variable "kubeconfig_filename" {
  description = "The name of the kubeconfig file"
  type = string
}

variable "initial_node_count" {
  description = "The initial node count of the cluster"
  type = number
}

variable "source_ranges" {
  description = "The source range for the firewall"
  type = list(string)
}

variable "bucket_name" {
  description = "The name of the bucket"
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