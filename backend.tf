# tfstate를 저장할 backend 설정
terraform {
  backend "s3" {
    bucket  = "jy-tfstate"
    key     = "terraform.state"
    region  = "ap-northeast-3"
    profile = "fastc"
  }
}