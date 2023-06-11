terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-03f65b8614a860c29"
  instance_type = "t2.micro"
  key_name = "alura-iac"
  user_data = <<-EOF
                  #!/bin/bash
                  sudo apt update 
                  echo "Y" | sudo apt install --yes nginx
                  sleep 5
                  cd /var/www/html/
                  echo "<h1> Feito com Terraform</h1>" | sudo tee index.html
                  sudo systemctl reload nginx
                 EOF
  tags = {
    Name = "Teste servidor WEB"
  }
}
