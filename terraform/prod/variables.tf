variable project {
  description = "Name of awesome project for Otus"
}

variable region {
  description = "Region"
  default     = "europe-west3"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable disk_image {
  description = "Disk image"
}

variable connection_key {
  description = "Connection key for GCP"
}

variable zone {
  description = "Zone"
  default     = "europe-west3-b"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
