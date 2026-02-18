resource "aws_cognito_user_pool" "pool" {
  name = "userpool-${terraform.workspace}"
}

resource "aws_cognito_user_pool_client" "client" {
  name         = "client-${terraform.workspace}"
  user_pool_id = aws_cognito_user_pool.pool.id
}
