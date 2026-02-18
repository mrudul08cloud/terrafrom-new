
resource "aws_cloudwatch_metric_alarm" "cpu" {
  alarm_name          = "cpu-alarm-${terraform.workspace}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 120
  statistic           = "Average"
  threshold           = 80
}
