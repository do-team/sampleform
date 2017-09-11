provider "aws" {
  region = "eu-central-1"
}

### Find an AMI to use for the deployment
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

### The Subnet to deploy within. 
variable "SUBNET" {
  type        = "string"
  description = "(Mandatory) Subnet to deploy within."
  default     = "subnet-e618ba8e"
}
