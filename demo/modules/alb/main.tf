resource "aws_lb" "nginx_alb" {
  name               = "nginx-alb"
#   public_sub-id = var.public_sub-id
#   pvt_sub1-id = var.pvt_sub1-id
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.public_sg-id]
  subnets            = [var.public_sub-id,var.pvt_sub2-id]

  enable_deletion_protection = true

 
  tags = {
    Environment = "production"
  }

}

  resource "aws_lb_target_group" "nginx_tg" {
  name     = "nginx-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
  health_check {
    path                = "/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
    matcher             = "200-299"
  }
}
resource "aws_lb_target_group_attachment" "nginx" {
  target_group_arn = aws_lb_target_group.nginx_tg.arn
  target_id        = var.pvt_instance_id
  port             = 80
}
resource "aws_lb_listener" "nginx" {
  load_balancer_arn = aws_lb.nginx_alb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.nginx_tg.arn
  }
}
