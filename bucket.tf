resource "google_storage_bucket" "mikolo-bucket1" {
  name     = "mikolo-bucket1"
  location = "us" 
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "mikolo-bucket2" {
  name     = "mikolo-bucket2"
  location = "eu" 
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}