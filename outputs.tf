output "my_ec2_ip" {
    value = aws_instance.my-instance.public_ip      
}