variable project {
  description = "infra-207602"
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
  default = "europe-west3-b"
}
