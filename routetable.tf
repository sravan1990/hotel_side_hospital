resource "aws_route_table" "hsh_tf-rt" {
  vpc_id = aws_vpc.hsh_tf.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.hsh_tf-igw.id
  }
  tags = {
    Name = "${var.project_name}-route-table"
  }
}