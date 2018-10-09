### Deploy a resource of type "aws_instance"" with the logical name "Web".
### We use the data value of the ami id found in inputs.tf, and the subnet_id defined in inputs.tf

resource "aws_instance" "web" {

  ami           = "ami-0e82b8b6afa30f2cd"
  instance_type = "t2.small"
  subnet_id     = "subnet-06e023141034f77de"
  key_name      = "zu697-fra"
  associate_public_ip_address = "true"
  vpc_security_group_ids = ["sg-05e10172cae1d79b3"]

  #
  # tags = "${merge(
  #   local.common_tags,
  #   map(
  #     "Name", "Hello World"
  #   )
  # )}"

  tags {
    Name = "Hello World"
    Product = "Ledger"
    CostCenter = "6522"
    Environment = "Development"
    ApplicationId = "0"
    Creator = "zu697"
    Owner = "zu697"
  }
  
  # 
  # lifecycle {
  #   create_before_destroy = "true"
  # }

}
