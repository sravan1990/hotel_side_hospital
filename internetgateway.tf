# Creating our internet gateway and attach it to the VPC
resource "aws_internet_gateway" "hsh_tf-igw" {
  vpc_id = aws_vpc.matts-week-21.id
  tags = {
    Name = "${var.project_name}-igw"
  }
}