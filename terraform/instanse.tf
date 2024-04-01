resource "aws_instance" "pomapp" {
  ami               = var.AMIS[var.REGION]
  instance_type     = "t2.micro"
  availability_zone = var.ZONE1
  key_name = "kubernetes"

  tags = {
    Name = "pom deploy"
  }

  user_data = "${file("dockerinit.sh")}"
}
