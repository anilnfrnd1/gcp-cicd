
resource "google_storage_bucket" "my_first_bucket" {
  name     = "first"
  location = "var.zone"
}
