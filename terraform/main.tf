resource "google_compute_instance" "vm" {
  name         = "terraform-vm-cicd"
  machine_type = var.machine_type
  zone         = var.zone

  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size  = 20
      type  = "pd-balanced"
    }
  }

  network_interface {
    network = "default"
    # no public IP
  }

 metadata = {
    enable-oslogin            = "TRUE"
    block-project-ssh-keys    = "TRUE"    
  }

  shielded_instance_config {
    enable_vtpm                 = true
    enable_integrity_monitoring = true
  }
}
