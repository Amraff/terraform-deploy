module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "my-lambda1"
  description   = "My 50% cool lambda function"
  handler       = "index.lambda_handler"
  runtime       = "python3.12"

  source_path = "./lambda-code/src/lambda-function1"
}