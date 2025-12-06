output "vm_public_ip" {
  description = "Public IP address of the GCP VM"
  value       = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}

output "vm_name" {
  description = "Name of the VM instance"
  value       = google_compute_instance.vm_instance.name
}

output "zone" {
  description = "Zone where VM is deployed"
  value       = google_compute_instance.vm_instance.zone
}
