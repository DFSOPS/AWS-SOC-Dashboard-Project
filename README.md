# SOC Dashboard Project

## Overview
This project showcases the development of a **Security Operations Center (SOC) dashboard** using **AWS Managed Grafana**, providing real-time monitoring and security insights. The dashboard integrates key AWS services like **AWS WAF** and **VPC Flow Logs** to visualize traffic patterns, detect potential threats, and monitor network performance.

This project demonstrates my ability to leverage **cloud-native monitoring solutions** and visualize complex security data, helping organizations enhance their **security posture** and **incident response capabilities**.

## Key Features
- **AWS WAF Traffic Monitoring**: 
  - Track and analyze inbound and outbound web traffic, providing visibility into potential web-based threats (e.g., SQL injection, Cross-Site Scripting).
  - Detect anomalies in real time, helping to safeguard applications.
  
- **VPC Flow Logs Monitoring**: 
  - Visualize detailed traffic patterns within your Virtual Private Cloud (VPC).
  - Monitor traffic to and from network interfaces, ensuring the detection of suspicious activity like port scanning or unusual data transfers.

- **Real-Time Alerts**: 
  - Configured alerts for suspicious patterns (e.g., high traffic volume, unusual IPs), enabling prompt response to security incidents.

## Tools & Technologies
- **Terraform**: Automated the provisioning of the following infrastructure:
  - **EC2 Instances**: Created for specific tasks within the environment.
  - **Security Groups**: Custom rules defined to manage inbound and outbound traffic securely.
  
- **AWS CloudWatch**: Used for collecting log data from AWS WAF and VPC Flow Logs.
- **AWS S3**: Store logs for long-term analysis and archival.
- **Grafana**: Designed the dashboard with **custom widgets** to represent key metrics and trends.

## Dashboard Breakdown

### 1. AWS WAF Dashboard
The WAF dashboard visualizes:
- Top **IP addresses** generating the most traffic.
- **Blocked** and **Allowed requests** over time.
- A breakdown of request patterns, allowing identification of potential threats.

![WAF Traffic Monitoring](Images)

### 2. VPC Flow Logs Dashboard
The VPC Flow Logs dashboard provides:
- **Traffic volume** trends, identifying spikes and irregularities.
- Top **sources and destinations** of network traffic.
- **Protocol** and **port analysis** to monitor open and potentially vulnerable services.

![VPC Flow Logs](Images)

### 3. Real-Time Alerts and Metrics
- **Latency and response times**: Monitored key performance metrics to ensure timely responses.
- Custom **thresholds** for alerting on high traffic or suspicious activity.
  
## How to Run This Project
1. **Terraform Configuration**: The infrastructure (EC2, Security Groups) was automated using Terraform. You can find the scripts in the `terraform` folder.
2. **CloudWatch Log Setup**: Logs from AWS WAF and VPC Flow Logs were directed to **CloudWatch Log Groups**, from which Grafana pulls the data.
3. **Grafana Dashboard**: The dashboard is designed with easily customizable panels. You can import the provided JSON configuration file to replicate the dashboard.

## Conclusion
This project illustrates my ability to design and implement a cloud-native security monitoring solution. It highlights my skills in **AWS security services**, **infrastructure as code (Terraform)**, and **data visualization** using Grafana. The dashboard not only provides a robust security overview but also supports **proactive threat detection** and **real-time analysis**.

---

By working on this SOC dashboard, I’ve developed strong skills in **cloud security**, **monitoring** and **DevSecOps**, which are essential for ensuring resilient and secure infrastructures in modern cloud environments.
