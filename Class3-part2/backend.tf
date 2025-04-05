terraform {
  backend "s3" {
    bucket = "kaizen-bubusaran"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "lock_state"

  }
}

