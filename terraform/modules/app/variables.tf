variable zone {
  description = "Zone"
  default     = "europe-west3-b"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable count {
  description = "Number of instances"
  default     = 1
}
