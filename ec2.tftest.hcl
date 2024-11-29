run "ec2sizecheck" {
    command = plan

    assert {
      condition = aws_instance.jenkinsfile.instance_type == "t2.micro"
      error_message = "you are only allowed t2.micro"
    }
}