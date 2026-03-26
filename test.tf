provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "TestInstance" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  security_groups = "sg-085912345678492fb"
  key_name = "my-key-pair"
  vpc_security_group_ids = "sg-085912345678492fb"
  
resource "aws_security_group" "TestSecurityGroup"
{
  name        = "TestSecurityGroup"
  description = "Allow SSH and HTTP traffic"
  vpc_id      = "vpc-1a2b3c4d"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

{ 
    tags = {
    Name = "TestInstance"
  }
  
}