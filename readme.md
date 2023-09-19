# Terraform Web Infrastructure

This repository contains Terraform configurations designed to deploy a comprehensive web infrastructure on AWS. The architecture is crafted to ensure scalability, reliability, and ease of monitoring.

## Overview

- **EC2 Instances**: 
  - **Purpose**: The EC2 instances serve as the primary compute resources to host the web application.
  - **Configuration**: Each instance is provisioned with a predefined AMI, ensuring a consistent environment across all instances. They are associated with a security group configured to allow inbound HTTP traffic on port 80, ensuring the application is accessible to users.
  - **Scalability**: While the initial setup provisions a fixed number of instances, this can be easily scaled up or down based on traffic requirements. Integration with AWS Auto Scaling can be added for dynamic scalability.
  - **Networking**: Instances are provisioned within a VPC, ensuring a secure and isolated environment. They are also associated with public subnets, allowing them to communicate directly with the internet.

- **Application Load Balancer (ALB)**:
  - **Purpose**: The ALB efficiently distributes incoming application traffic across multiple targets, such as EC2 instances.
  - **Configuration**: The ALB listens on port 80 (HTTP) and routes traffic to the associated target group. Health checks are configured to ensure traffic is only sent to healthy instances.
  - **Benefits**: ALBs are application-aware, offering features like host-based routing, path-based routing, and SSL termination. They also provide robust monitoring capabilities through access logs and CloudWatch metrics.

- **MySQL RDS Instance**:
  - **Purpose**: Provides a managed relational database service, eliminating the need for manual database administration tasks.
  - **Configuration**: The RDS instance is set up with MySQL 5.7, ensuring a reliable and performant relational database system. It's associated with a security group that permits traffic only from the EC2 instances, ensuring database security.
  - **Benefits**: RDS offers automated backups, database snapshots, automatic host replacement, and replication to enhance availability and reliability.

- **CloudWatch**:
  - **Purpose**: CloudWatch provides monitoring and operational data in the form of logs, metrics, and events, giving a unified view of AWS resources, applications, and services.
  - **Configuration**: A CloudWatch log group is set up to capture logs from various resources. Additionally, a metric alarm is configured to monitor the CPU utilization of the EC2 instances.
  - **Benefits**: With CloudWatch, you can set high-resolution alarms, visualize logs and metrics side by side, and troubleshoot issues. It's a crucial component for ensuring the health and performance of the infrastructure.

- **SNS**:
  - **Purpose**: Amazon Simple Notification Service (SNS) is a fully managed messaging service for both application-to-application and application-to-person communication.
  - **Configuration**: An SNS topic is provisioned to handle alerts. It's specifically set up to notify when the CloudWatch alarm for high CPU usage on the EC2 instances is triggered.
  - **Benefits**: SNS provides a robust mechanism to send alarm notifications via multiple channels like email, SMS, or even to other AWS services. It ensures that critical alerts are promptly attended to.
