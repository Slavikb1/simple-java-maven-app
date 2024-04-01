resource "aws_instance" "pomapp" {
  ami               = var.AMIS[var.REGION]
  instance_type     = "t2.micro"
  availability_zone = var.ZONE1
  key_name = "kubernetes"
 # vpc_security_group_ids = ["sg-0b36d0afa317cfb8f"]
 # vpc_security_group_ids = ["${aws_security_group.terraform_allow.id}"]


  tags = {
    Name = "pom deploy"
  }
}
