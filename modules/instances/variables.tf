variable "vm_name" {
  type        = string
  description = "Nama VM"
}

variable "vm_machine_type" {
  type        = string
  description = "Spesifikasi VM"
  default     = "e2-micro"
}

variable "vm_zone" {
  type    = string
  default = "asia-southeast2-a"
}

variable "vm_allow_stop_update" {
  type    = bool
  default = false
}

variable "vm_network_tags" {
  type    = list(string)
  default = ["allow-ssh", "allow-ping"]
}

variable "vm_images" {
  type    = string
  default = "ubuntu-os-cloud/ubuntu-2004-lts"
}

variable "ssh_keys" {
  type    = string
  default = "<USER>:<YOUR_SSH_PUBLIC_KEY>"
}

variable "vm_network" {
  type    = string
  default = "default"
}