resource "aws_s3_bucket" "data_source" {
  bucket = var.data_source_bucket_name
}

resource "aws_s3_bucket_notification" "data_source" {
  bucket      = aws_s3_bucket.data_source.id
  eventbridge = true
}
