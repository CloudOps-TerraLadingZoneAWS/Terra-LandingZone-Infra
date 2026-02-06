locals {
  resource_tags = merge(
    {
      Name = "${var.name}-${var.environment}"
    },
    var.tags
  )
}

resource "aws_s3_bucket" "this" {
  bucket        = lower("${var.name}-${var.environment}")
  force_destroy = var.force_destroy
  tags          = local.resource_tags
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket                  = aws_s3_bucket.this.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = var.versioning ? "Enabled" : "Suspended"
  }
}
