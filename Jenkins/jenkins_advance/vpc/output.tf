output "subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "vpc" {
  value = aws_subnet.vpc.id
}