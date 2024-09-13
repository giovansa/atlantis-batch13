remote_state{
    backend = "gcs"
    config = {
        bucket = "tf-state-gio"
        prefix = "${path_relative_to_include()}/terraform.state"
    }
}

inputs = {
    project = "bubbly-repeater-423412-c4"
    region = "asia-southeast2"
    zone = "asia-southeast2-a"
    vm_name = "dev-${basename(get_terragrunt_dir())}"
    vm_machine_type = "e2-micro"
}