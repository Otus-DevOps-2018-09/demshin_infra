provider "google" {
  version = ">=1.4.0"
  project = "${var.project}"
  region  = "${var.region}"
}

# resource "google_compute_project_metadata" "keys" {
#   metadata {
#     ssh-keys = "appuser1:${file(var.public_key_path)}appuser2:${file(var.public_key_path)}"
#   }
# }
