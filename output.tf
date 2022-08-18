output "ecr" {
  value = aws_ecr_repository.registry.repository_url
}