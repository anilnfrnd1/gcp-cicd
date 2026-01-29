resource "google_storage_bucket" "my_first_bucket" {
  name          = "my-unique-bucket-name-2026" # Must be globally unique
  location      = "US-CENTRAL1"               # Use lowercase for regions, uppercase for multi-regions
  force_destroy = true                        # Allows 'terraform destroy' to delete non-empty buckets

  # Security: Prevent accidental public exposure
  public_access_prevention = "enforced"

  # Reliability: Keep history of your files
  versioning {
    enabled = true
  }

  # Cost Management: Move files to Nearline storage after 30 days
  lifecycle_rule {
    condition {
      age = 30
    }
    action {
      type = "set_storage_class"
      storage_class = "NEARLINE"
    }
  }
}
