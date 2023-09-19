resource "aws_cloudwatch_log_group" "web_log_group" {
  name = "web-log-group"
}

resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name          = "High CPU Usage"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "60"
  statistic           = "Average"
  threshold           = "80"
  alarm_description   = "This metric checks if the CPU usage is above 80% for 2 consecutive periods of 60 seconds."
  alarm_actions       = [aws_sns_topic.cpu_alerts.arn]
}
