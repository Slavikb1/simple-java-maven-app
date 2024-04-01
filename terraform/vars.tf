variable "REGION" {
  default = "eu-central-1"
}

variable "ZONE1" {
  default = "eu-central-1a"
}

variable "AMIS" {
  type = map(any)
  default = {
    eu-central-1 = "ami-01be94ae58414ab2e"
    #amazon linux 2023
    #eu-central-1 = "ami-023adaba598e661ac" #ubuntu
  }
}

variable "USER" {
  default = "ec2-user"
}
