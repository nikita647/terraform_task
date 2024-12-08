output "bucket_name" {
  value       = aws_s3_bucket.bucket.bucket
  description = "the name of the s3 bucket"
}

output "bucket_arn" {
  value       = aws_s3_bucket.bucket.arn
  description = "s3 bucket arn"
}
output "policy_Attached" {
  value       = data.aws_iam_policy_document.iam_policy.json
  description = "policy attached to  user"

}
  
