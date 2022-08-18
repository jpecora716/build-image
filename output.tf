output "ecr" {
  value = aws_ecr_repository.registry.repository_url
}
output "ecr_id" {
  value = aws_ecr_repository.registry.registry_id 
}