variable "subnet_ids" {
  description = "List of subnet IDs for the ALB"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID for the resources"
}

variable "db_password" {
  description = "Password for the RDS instance"
  sensitive   = true
}

variable "alert_email" {
  description = "Email address to receive CPU usage alerts"
}
