resource "google_compute_instance" "db_disk_image" {
  name         = "reddit-db"
  machine_type = "g1-small"
  zone         = "${var.zone}"
  tags         = ["reddit-db"]

  boot_disk = {
    initialize_params {
      image = "${var.db_disk_image}"
    }
  }

  network_interface {
    network       = "default"
    access_config = {}
  }

  metadata {
    ssh-keys = "demshin:${file(var.public_key_path)}"
  }
}
