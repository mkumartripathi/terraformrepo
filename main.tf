resource "aws_s3_bucket" "bucket1" {
	bucket = "vishnu-first-bucket-19oct"
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
    bucket = aws_s3_bucket.bucket1.id
    acl = "private"
}

provider "aws" {
    access_key=var.accesskey
    secret_key=var.secretkey
    region = "eu-west-1"
}

variable "accesskey"{
    default="AKIAZTIMJ7JHIX5X6XYT"

}

variable "secretkey"{
    default="sZxGTgqjwRdnyDHlckv4QzTaY2OVxz1oObnB6ZUM"
}
