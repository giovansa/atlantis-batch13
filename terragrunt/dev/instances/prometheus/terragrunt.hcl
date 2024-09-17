terraform {
    source = "../../../../modules/instances"
}

include {
    path = find_in_parent_folders()
}

inputs = {
    vm_network_tags = ["http-server"]
    vm_network = "default"
    vm_images = "ubuntu-os-cloud/ubuntu-2004-lts"
}