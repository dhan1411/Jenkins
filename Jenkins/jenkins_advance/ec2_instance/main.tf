resource "aws_instance" "server" {

    ami = var.ami
    instance_type = var.instance_type
    tags = {
        Name = var.server_name
    }
    key_name = var.key
    vpc_security_group_ids = [aws_security_group.sg.id]
    subnet_id = var.subnet_id


   root_block_device {
   volume_type = var.volume_type
   volume_size = var.volume_size


   }

}


