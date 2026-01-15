variable "project_id" {
  description = "GCP project ID"
  type        = string
}
variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central"
}
variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "machine_type" {
  description = "VM machine type"
  type        = string
  default     = "e2-medium"
}

variable "ssh_user" {
  description = "Linux SSH username"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key contents"
  type        = string
}
