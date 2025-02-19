resource "aws_s3_bucket" "example" {
  bucket = "raff-2025-tf-statefile"

  tags = {
    Name        = "raff-2025-tf-statefile"
    Project = "Raff_DevOps"
  }
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.example.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}