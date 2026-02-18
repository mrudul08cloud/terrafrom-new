variable "ami_id" {}

resource "aws_instance" "app" {
  ami           = var.ami_id
  instance_type = terraform.workspace == "prod" ? "t3.medium" : "t3.micro"

  tags = {
    Name = "app-${terraform.workspace}"
  }
}
