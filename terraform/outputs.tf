output "demo_bucket_name" {
  value = aws_s3_bucket.devops_demo.bucket
}

output "app_server_id" {
  value = aws_instance.app_server.id
}

output "app_server_public_ip" {
  value = aws_instance.app_server.public_ip
}