terraform {
  backend "gcs" {
    bucket = "demshin-tf-backend-stage"
    prefix = "tfstate/stage"
  }
}
