resource "google_compute_instance" "vm" {
  name         = "terraform-vm-cicd"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "Ubuntu 25.10 Minimal"
      size  = 10
      type  = "pd-balanced"
    }
  }

  network_interface {
    network = "default"

    access_config {} #  Ephemeral public IP
  }
}
