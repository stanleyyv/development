# AWS EC2 instance 
# instance is in region us-west-2
resource "aws_instance" "stanley-amazon-linux-1" {
  ami = "ami-0c2ab3b8efb09f272"
  instance_type = "t2.micro"
  
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
