terraform {
  backend "s3" {
    bucket         = "wilfred-terraform-state-905221885643"
    key            = "scps/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
