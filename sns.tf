resource "aws_sns_topic" "cpu_alerts" {
  name = "cpu-alerts"
}

resource "aws_sns_topic_subscription" "cpu_alerts_email" {
  topic_arn = aws_sns_topic.cpu_alerts.arn
  protocol  = "email"
  endpoint  = var.alert_email
}
