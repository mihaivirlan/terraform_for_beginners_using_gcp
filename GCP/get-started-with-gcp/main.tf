terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  project = "mihai-test-341609"
  region = "us-central1"
  zone = "us-central1-c"
}

resource google_storage_bucket "state-bucket" {
  name = "terraform-state-bucket-demo"
}