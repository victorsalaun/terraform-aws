provider "aws" {
  region = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

# create an s3 bucket
resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket_name}"
  force_destroy = "true"
}