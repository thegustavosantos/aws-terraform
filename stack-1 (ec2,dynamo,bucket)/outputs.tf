output "dev-1" {
  value = aws_instance.dev[0].public_ip
}

output "dev-2" {
  value = aws_instance.dev[1].public_ip
}

output "dev-3" {
  value = aws_instance.dev[2].public_ip
}

output "dev-4" {
  value = aws_instance.dev-4.public_ip
}

output "dev-5" {
  value = aws_instance.dev-5.public_ip
}

output "dev-6" {
  value = aws_instance.dev-6.public_ip
}

output "dev-7" {
  value = aws_instance.dev-7.public_ip
}
