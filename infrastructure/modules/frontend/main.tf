resource "aws_s3_bucket" "frontend_bucket" {
  bucket = "magdalene-church-bucket-${var.env}"
}