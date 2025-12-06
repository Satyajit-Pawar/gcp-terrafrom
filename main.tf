terraform {
  required_version = ">= 1.0.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

# Create a VPC (optional)
resource "google_compute_network" "vpc_network" {
  name = "${var.project_id}-vpc"
}

# Create a firewall rule (allow SSH & HTTP)
resource "google_compute_firewall" "default" {
  name    = "vm-firewall"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "8080"]
  }

  source_ranges = ["0.0.0.0/0"]
}

# Create a GCP VM Instance
resource "google_compute_instance" "vm_instance" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.disk_size
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.self_link

    access_config {
      // Creates a public IP
    }
  }

  metadata_startup_script = var.startup_script
}
