resource "google_compute_instance" "vm" {
  name         = "terraform-vm-cicd1"
  machine_type = var.machine_type
  zone         = var.zone

  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size  = 10
      type  = "pd-balanced"
    }
  }

  network_interface {
    network = "default"
  }

  metadata = {
    block-project-ssh-keys = "true"
    ssh-keys               = "${var.ssh_user}:${var.ssh_public_key}"
  }
}
