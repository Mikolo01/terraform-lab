resource "google_storage_bucket" "gcp-bucket" {
  name     = "mikolo01-bucket"
  location = "US" 
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}