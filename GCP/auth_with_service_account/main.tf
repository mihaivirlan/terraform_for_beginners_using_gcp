# Documentation: https://www.terraform.io/docs/language/settings/index.html
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.0"
    }
  }
}

# Documentation: https://www.terraform.io/docs/language/providers/requirements.html
provider "google" {
  project = "mihai-test-341609"
  region  = "us-central1"
  zone    = "us-central1-a"
}

# Explanation: This resource is not necessary for the creation of an GCS bucket, but is here to ensure that
# the GCS bucket name is unique.
#
# Documentation: https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id
resource "random_id" "google_storage_bucket_simple_name" {
  byte_length = 16
}

# GCS (Google Cloud Storage) bucket
# Documentation: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket
resource "google_storage_bucket" "google_storage_simple_bucket" {
  #name     = random_id.google_storage_bucket_simple_name.hex
  name     = "my-first-test-bucket-${random_id.google_storage_bucket_simple_name.hex}"
  location = "US"
}