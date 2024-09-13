terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.30.0"
    }
  }
  
  backend "gcs" {}
}


provider "google" {
  project = "bubbly-repeater-423412-c4"
  region = "asia-southeast2"
  zone = "asia-southeast2-a"
  credentials = file("tf-gcp-creds.json")
}

resource "google_compute_instance" "vm-webserver" {
  name                      = var.vm_name
  machine_type              = var.vm_machine_type
  zone                      = var.vm_zone
  allow_stopping_for_update = var.vm_allow_stop_update

  tags = var.vm_network_tags

  boot_disk {
    initialize_params {
      image = var.vm_images
    }
  }

  network_interface {
    network = var.vm_network

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    ssh-keys = var.ssh_keys
  }
}