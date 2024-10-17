resource "aws_route_table_association" "hsh_tf-awsrta" {
  subnet_id      = aws_subnet.subnet-1.id
  route_table_id = aws_route_table.hsh_tf-rt.id
}