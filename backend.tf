terraform {
  backend "s3" {
    bucket         = "demo-1233"
    key            = "terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
