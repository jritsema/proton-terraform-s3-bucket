resource "aws_s3_bucket" "main" {
  bucket = "${var.environment.name}-${data.aws_caller_identity.main.account_id}-${random_id.main.dec}"
}

resource "aws_s3_bucket_versioning" "main" {
  bucket = aws_s3_bucket.main.id
  versioning_configuration {
    status = var.environment.inputs.versioning ? "Enabled" : "Disabled"
  }
}

resource "random_id" "main" {
  byte_length = 8
}
