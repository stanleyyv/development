# AWS EC2 instance 

# adding security group to ec2
resource "aws_security_group" "web-sg" {
  name = "stanley-dev-sg"
  ingress {
    from_port   = 80
    to_port     = 80
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

# instance is in region us-west-2
resource "aws_instance" "stanley-amazon-linux-1" {
  ami                    = "ami-0c2ab3b8efb09f272"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.web-sg.id]
  key_name               = "stanley-dev-key-pair"

  tags = {
    Name = "EC2InstanceByTerraform"
  }
}

/*
CLI:
teraform init
teraform apply
yes
--> EC2 instance will be seen
*/
