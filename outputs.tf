### When the infrastructure deployment is completed, output the value of private DNS
output "private_dns" {
  value = "${aws_instance.web.private_dns}"
}

output "public_ip" {
  value = "${aws_instance.web.public_ip}"
}
