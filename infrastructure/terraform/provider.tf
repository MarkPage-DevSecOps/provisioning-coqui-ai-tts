terraform {
  backend "s3" {
    bucket         = "terraform-whisper-s3-backend"
    key            = "api-coqui-ai-dev"
    region         = "ap-southeast-1"
    encrypt        = true
    role_arn       = "arn:aws:iam::236060519813:role/Terraform-WhisperS3BackendRole"
    dynamodb_table = "terraform-whisper-s3-backend"
  }
}

provider "aws" {
  region = var.aws_region
}