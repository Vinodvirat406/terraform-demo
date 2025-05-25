provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_instance" {
  count         = var.instance_count
  ami           = "ami-084568db4383264d4"
  instance_type = var.instance_type
  key_name      = var.key_name
  tags = {
    Name = "terrafom-${count.index + 1}"
  }
}

