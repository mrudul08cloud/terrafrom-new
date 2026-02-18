resource "aws_efs_file_system" "efs" {
  creation_token = "efs-${terraform.workspace}"
}
