variable "aws_region" {
  description = "The AWS region to deploy the infrastructure in"
  default     = "us-west-1"
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  default     = 2
}

variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  default     = "ami-0c55b159cbfafe1f0" # This is just a placeholder, replace with your desired AMI ID
}

variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the key pair for the EC2 instances"
  default     = "my-key-pair"
}
