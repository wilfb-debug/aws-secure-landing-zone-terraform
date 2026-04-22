terraform {
  backend "s3" {
    bucket         = "wilfred-terraform-state-205966172478"
    key            = "scps/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
