terraform {
  backend "gcs" {
    bucket  = "terraform_states_2026"
    prefix  = "tf/cloudbuild-states"
  }
}
