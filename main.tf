terraform {
  backend "s3" {
    bucket = "test-cristhian"
    key    = "terraform"
    region = "us-east-2"
    profile = "dev"
  }
}

provider "aws" {
  profile = "dev"
  region = "us-east-2"
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name        = "Bucket Created From Local Terraformer"
    Environment = "Cristhian-Dev"
  }
}

resource "null_resource" "hello_world" {
  provisioner "local-exec" {
    command = "echo hello world!!"
  }
}

resource "null_resource" "hello_world_part_2" {
  provisioner "local-exec" {
    command = "echo ${var.greetings}!"
  }
}

resource "null_resource" "dont_hack_me" {
  provisioner "local-exec" {
    command = "echo My password is: ${var.password}"
  }
}
