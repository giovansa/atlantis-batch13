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
    ssh_keys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDZohDnsoz1osdDe7ByY/jp5OFNGY9bCZkSO4+ypAV/4RGa+wAXnhhDlvHgUW3t66MmL0/eflM/MC/IUq3WNdlFPXEQyE8g6hWMYflLVyBtYvluGuVj7EudZTv2zMTHKOcqPfC+RIQJjc1DRuK1OPoB/0OBO5J7NjijQcPP7WVvPtB/hT4iqbNyiSi8KoUEJF7k9EaxQgUp3RMRzyP1pcZx1L3UJSS0TCcU0nm8wrkHFRsI4ZwwFsYqh9BtWMfeI0otxzF71/0su4YXV0u9t16IpZpjwCyktTZyBTnL3Nmy7li/KxR/YJcKlSihEpOuwbFydL+NKE3CyhpJ/PRcXGtj7zbEaNyEl+tQbCYoXlKgvx8buwTMuj4nr4te9mRKiaEQ1b1Q9ZzxDK292lLb3ElXg6y2z817SlwawxJ1G9xs7Kaa76U9MhTMPk+uONZL7wT+/cd6yXk7aG/E1JBVBE0rnJ0/moS0N3PVEWm72NxtYEvFjwp8l+1/a07bWRx6Z2U= giovan@192.168.68.106"
}