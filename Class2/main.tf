resource "aws_key_pair" "deployer" {
  key_name   = "bastion-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_s3_bucket" "myS3" {
  bucket = "kaizen-bubusaran"
}

resource "aws_s3_object" "object" {
  #bucket = aws_s3_bucket.myS3.bucket
  depends_on = [aws_s3_bucket.myS3]
  bucket = "kaizen-bubusaran"
  key    = "provider.tf"
  source = "provider.tf"
}

