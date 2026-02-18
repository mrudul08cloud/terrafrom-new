module "iam" {
  source = "./modules/iam"
}

module "ec2" {
  source = "./modules/ec2"
  ami_id = var.ami_id
}

module "efs" {
  source = "./modules/efs"
}

module "cloudwatch" {
  source = "./modules/cloudwatch"
}

module "cognito" {
  source = "./modules/cognito"
}
