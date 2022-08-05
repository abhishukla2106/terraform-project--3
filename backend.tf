terraform {
  backend "s3" {
    bucket = "abhi1221"
    key    = "abhifile.tfstate"
    region = "ap-south-1"
    dynamodb_table = "abhi_21"
  }
}