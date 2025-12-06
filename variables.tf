variable "credentials_file" {
  description = "Path to GCP service account JSON file"
  type        = string
}

variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "asia-south1"
}

variable "zone" {
  description = "GCP Zone"
  type        = string
  default     = "asia-south1-a"
}

variable "instance_name" {
  description = "Name of the VM instance"
  type        = string
}

variable "machine_type" {
  description = "VM machine type"
  type        = string
  default     = "e2-medium"
}

variable "image" {
  description = "OS image for boot disk"
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "disk_size" {
  description = "Disk size in GB"
  type        = number
  default     = 20
}

variable "startup_script" {
  description = "Startup script for the VM"
  type        = string
  default     = "echo Hello from Terraform VM > /var/www/html/index.html"
}
