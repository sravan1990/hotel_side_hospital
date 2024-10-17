# Creating our two subnets
resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.hsh_tf.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.project_name}-subnet-1"
  }
}

resource "aws_subnet" "subnet-2" {
  vpc_id     = aws_vpc.hsh_tf.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.project_name}-subnet-2"
  }
}