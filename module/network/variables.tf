variable "vpc_network" {
  description = "The VPC network created to host the cluster"
  type = string
}

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

variable "source_ranges" {
  description = "The authorized_network_cidr_range for accessing SQL DB"
  type = list(string)
}

variable "traffic_type" {
  description = "The type of traffic (INGRESS/EGRESS) for firewall"
  type = string
}

variable "location" {
  description = "The location to host the cluster"
  type = string
}
