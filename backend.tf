terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "env/${terraform.workspace}/terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
