output "vm_webserver_ip_public" {
  value = google_compute_instance.vm-webserver.network_interface[0].access_config[0].nat_ip
}

output "vm_webserver_ip_private" {
   value = google_compute_instance.vm-webserver.network_interface[0].network_ip
}