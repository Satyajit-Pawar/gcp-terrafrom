output "instance_public_ip" {
  description = "Public IP of the VM"
  value       = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}

output "instance_self_link" {
  description = "Self link of the VM resource"
  value       = google_compute_instance.vm_instance.self_link
}
