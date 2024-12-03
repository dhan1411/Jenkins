provider "aws" {

    region = "us-east-2"

}

resource "aws_instance" "Test" {

    ami = "ami-0327f51db613d7bd2"
    intsance_type = "t2.micro"
    tags = {
        Name = "Machine2"
    }
}
