/*resource "aws_s3_bucket" "my_bucket" {
  bucket = var.s3_state

}
*/
resource "aws_dynamodb_table" "terraform_lock" {

	name = "terraform-lock"
	billing_mode = "PAY_PER_REQUEST"
	hash_key = "LOCKID"
	attribute {
		name = "LOCKID"
		type = "S"
	}

}
/*resource "aws_s3_bucket_versioning" "bucket_vcs" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}*/