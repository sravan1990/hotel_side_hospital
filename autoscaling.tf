# Creating our Auto Scaling group
resource "aws_autoscaling_group" "hsh_tf-asg" {
  name                 = "${var.project_name}-asg"

  desired_capacity     = 1
  max_size             = 2
  min_size             = 1
  health_check_type    = "EC2"
  vpc_zone_identifier  = [aws_subnet.subnet-1.id, aws_subnet.subnet-2.id]

  launch_configuration = aws_launch_configuration.hsh_tf-lc.name
}