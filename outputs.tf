output "bastion_public_ip" {
  description = "Public IP of the bastion host"
  value       = aws_instance.bastion.public_ip
}

output "private_instance_ip" {
  description = "Private IP of the application server"
  value       = aws_instance.private.private_ip
}

output "connection_instructions" {
  value = <<EOT

SSH to Bastion:
ssh -A -i <your-key.pem> ec2-user@${aws_instance.bastion.public_ip}

Then SSH to the Private Instance:
ssh ec2-user@${aws_instance.private.private_ip}

EOT
}