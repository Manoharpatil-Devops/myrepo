provider "aws" {
  region = "us-east-1"  # Change this to your preferred AWS region
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0c55b159cbfafe1f0" # Example Amazon Linux AMI for us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "MyFirstTerraformEC2"
  }
}
