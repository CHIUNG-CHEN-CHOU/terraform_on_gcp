
resource "google_storage_bucket" "showcase_bucket" {
  name          = "ch-bucket-from-terraform"
  location      = "EU"
  storage_class = "Standard"
  force_destroy = true
  uniform_bucket_level_access = true
  public_access_prevention = "enforced"
}

resource "google_storage_bucket_object" "pic" {
  name   = "cute_cat"
  bucket = google_storage_bucket.showcase_bucket.name
  source = "cat.jpg"
}
