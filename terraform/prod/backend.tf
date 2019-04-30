terraform {
    backend "gcs" {
        bucket = "demshin-otus-tfstate"
        prefix = "terraform/tfstate/prod"
    }
}
