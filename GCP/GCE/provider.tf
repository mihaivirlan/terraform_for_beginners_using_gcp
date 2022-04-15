# Documentation: https://www.terraform.io/docs/language/settings/index.html
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.85.0"
    }
  }
}

# Documentation: https://www.terraform.io/docs/language/providers/requirements.html
provider "google" {
  project = "mihai-test-341609"
  region  = "us-central1"
  zone    = "us-central1-a"
  credentials = "mihai-test-341609-554fb64356a9.json"
}