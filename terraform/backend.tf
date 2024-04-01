terraform {
  backend "s3" {
    #bucket name
    bucket = "terrabucket333"
    #directory inside that bucket
    key = "terraform/backend"
    #region
    region = "eu-central-1"
  }
}
