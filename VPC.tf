# Creating our VPC
resource "aws_vpc" "hsh_tf" {
  cidr_block = "10.0.0.0/16"
}

##subnets
##internet_gateway
##route_table
##routetable_association_with_subnets

# Creating our security group that allows traffic from the internet
resource "aws_security_group" "allow-tls" {
  name        = "allow-tls"
  description = "Allow TLS inbound traffic from the internet"
  vpc_id      = aws_vpc.hsh_tf.id

  ingress {
    description      = "HTTP from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.hsh_tf.cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-tls"
  }
}

# Firewall configuration for the our instances
resource "aws_security_group_rule" "hsh_tf-http-inbound" {
  type        = "ingress"
  from_port   = 80
  to_port     = 80
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = aws_security_group.allow-tls.id
}

# Creating our launch configuration with user data to launch an Apache web server
resource "aws_launch_configuration" "hsh_tf-lc" {
  name_prefix          = "${var.project_name}-lc"
  image_id             = "ami-06e46074ae430fba6"
  instance_type        = "t2.micro"
  security_groups      = [aws_security_group.allow-tls.id]
  user_data            = file("apache_httpd.sh")

  lifecycle {
    create_before_destroy = true
  }
}

# Creating our Application Load Balancer target group
resource "aws_lb_target_group" "hsh_tf-lbtg" {
  name     = "${var.project_name}-lb-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.hsh_tf.id
}