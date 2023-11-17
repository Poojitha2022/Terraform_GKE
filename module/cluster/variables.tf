variable "cluster_name" {
  description = "The name for the GKE cluster"
  type = string
}

variable "location" {
  description = "The location to host the cluster"
  type = string
}

variable "initial_node_count" {
  description = "The location to host the cluster"
  type = number
}

variable "nodepool_name" {
  description = "The name of the node pool for the cluster"
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

variable "subnet" {
  description = "The subnetwork created to host the cluster"
  type = string
}

variable "vpc_network" {
  description = "The VPC network created to host the cluster"
  type = string
}