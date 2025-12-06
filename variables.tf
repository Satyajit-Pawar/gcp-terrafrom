variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "Region where resources will be created"
  type        = string
}

variable "zone" {
  description = "Zone where VM will run"
  type        = string
}

variable "instance_name" {
  description = "Name of the Compute Engine instance"
  type        = string
}

variable "machine_type" {
  description = "Machine type for VM"
  type        = string
  default     = "e2-medium"
}

variable "image" {
  description = "Boot image for VM"
  type        = string
  default     = "debian-cloud/debian-12"
}

variable "credentials_file" {
  description = "Service Account JSON key file path"
  type        = string
}

variable "startup_script" {
  description = "Startup script executed on VM boot"
  type        = string
  default     = "echo Hello from Terraform VM"
}
