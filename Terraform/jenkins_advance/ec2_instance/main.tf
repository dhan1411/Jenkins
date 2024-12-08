resource "aws_instance" "server" {

    ami = var.ami
    instance_type = var.instance_type
    tags = {
        Name = var.server_name
    }
    key = var.key_name
    vpc_security_group_ids = [aws_security_group.sg.id]
    subnet = [aws_subnet.public_subnet.id]


   root_block_device {
   volume_type = var.volume_type
   volume_size = var.volume_size


   }

}
resource "aws_vpc" "vpc" {
  cidr_block = "10.10.0.0/16"

  tags = {
    Name = "Vpc"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.10."
  availability_zone = "us-west-2a"

  tags = {
    Name = "tf-example"
  }
}

