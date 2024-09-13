output "vm_webserver_ip_public" {
  value = google_compute_instance.vm-webserver.network_interface[0].access_config[0].nat_ip
}

# output "vm2_ip_public" {
#   value = google_compute_instance.vm-demo-2.network_interface[0].access_config[0].nat_ip
# }

# output "vm1_ip_private" {
#  value = google_compute_instance.vm-demo.network_interface[0].network_ip
#}

 output "vm_webserver_ip_private" {
   value = google_compute_instance.vm-webserver.network_interface[0].network_ip
}