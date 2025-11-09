resource "aws_key_pair" "deployer" {
  key_name = "tws-terra-key"
  public_key = file("terra-key.pub")

}


resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "twssecurity" {
  name        = "allow ports"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_default_vpc.default.id

  ingress {
    description = "SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "my-instance" {
    ami         = var.ami_id # Amazon Linux 2 AMI (HVM), SSD Volume Type
    instance_type = "t2.micro"
    key_name    = aws_key_pair.deployer.key_name
    security_groups = [aws_security_group.twssecurity.name]

    tags = {
        Name = "terra-automate"
    }
}




