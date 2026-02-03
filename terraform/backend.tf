terraform {
  backend "gcs" {
    bucket  = "terraform-state-bucket"
    prefix  = "env/${terraform.workspace}"
  }
}
