provider "aws" {
  region = "us-east-1"  # Change to your desired region
}

resource "aws_instance" "jenkins_ec2" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (replace with latest for your region)
  instance_type = "t2.micro"
  key_name      = "social-jenkins"         # Replace with your key pair name

  tags = {
    Name = "Terraform-Jenkins-EC2"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install -y python3"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("~/.ssh/your-key.pem")  # Replace with path to your .pem file
      host        = self.public_ip
    }
  }
}
