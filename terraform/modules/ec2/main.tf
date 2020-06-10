resource "aws_instance" "web" {
  ami           = "ami-07a6716a7f1ee6d61"
  instance_type = "t2.micro"

	dynamic "ebs_block_device" {
		for_each = var.blocks
		content{
		device_name = ebs_block_device.value["device_name"]
        volume_size = ebs_block_device.value["volume_size"]
        volume_type = ebs_block_device.value["volume_type"]
		}
 
	}
	tags = {
    Name = var.name
  }

}

output "ip" {
  value = "${aws_instance.web.*.public_ip}"
}