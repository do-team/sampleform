### Deploy a resource of type "aws_instance"" with the logical name "Web".
### We use the data value of the ami id found in inputs.tf, and the subnet_id defined in inputs.tf

resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  subnet_id     = "${var.SUBNET}"

  tags {
    Name = "HelloWorld"
  }
}
