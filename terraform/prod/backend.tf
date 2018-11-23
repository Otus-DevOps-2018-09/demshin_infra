terraform {
  backend "gcs" {
    bucket = "demshin-tf-backend-prod"
    prefix = "tfstate/prod"
  }
}
