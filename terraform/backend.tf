terraform {
  backend "gcs" {
    bucket  = "terraform-state-bucket"
    prefix  = "gcp/${terraform.workspace}"
  }
}
