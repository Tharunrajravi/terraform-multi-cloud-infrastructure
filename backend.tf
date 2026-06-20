# the backend resources located in the ./backend directory.

terraform {
  backend "s3" {

    # bucket         = "terraform-state-bucket"
    # key            = "terraform.tfstate"
    # region         = "ap-south-1"
    # dynamodb_table = "terraform-locks"
    # encrypt        = true

  }
}
