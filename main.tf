
terraform {
  backend "s3" {
    bucket = "terragithubactionbucket"
    key = "jenkins.tfstate"
    region = "us-east-1"    
  }
}

provider "aws" {
    region = "us-east-1"  
}
resource "aws_instance" "githubaction" {
    instance_type = "t2.micro"
    ami = "ami-0166fe664262f664c"
    tags = {
      Name = "jenkins-vm"
    }  
}