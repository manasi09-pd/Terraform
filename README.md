🚀 Configuring Production-Ready EKS Clusters with Terraform and GitHub Actions

Welcome to the Configuring Production-Ready EKS Clusters with Terraform and Automating with GitHub Actions repository! This project demonstrates how to provision a fully functional and scalable Amazon EKS (Elastic Kubernetes Service) cluster using Terraform, and how to automate deployments and infrastructure changes using GitHub Actions.

🌟 Overview

This project focuses on building a robust DevOps workflow by combining the power of Infrastructure as Code (IaC) with continuous integration and delivery:

✅ Features

Terraform: Declaratively provision EKS clusters, node groups, IAM roles, and networking components (VPC, subnets, etc.).

GitHub Actions: Automate Terraform workflows — plan, apply, and validate configurations via pull requests or pushes to main.

Production-Ready Config: Modular structure, state management, secrets handling, and best practices for scaling and security.

Serverless + AWS Native Services: (Optional) Integrate serverless components and AWS-native services where applicable.


# EKS Cluster Autoscaling with Karpenter

This repository demonstrates how to configure **Karpenter** for automatic node scaling in an AWS EKS cluster using a custom Amazon Linux 2 AMI.

---

## Tools Used
- **Amazon EKS** (Managed Kubernetes service)
- **Karpenter** (Kubernetes autoscaler by AWS)
- **AWS CLI** (for managing EC2 resources)
- **kubectl** (Kubernetes CLI)
- **Helm** (Helmchart for karpenter)

---

## Overview

Karpenter dynamically provisions EC2 instances based on Kubernetes workload demands. This setup uses a custom EC2NodeClass with a specific AMI tagged for Karpenter discovery and configures subnets, security groups, and IAM roles for proper node lifecycle management.

---

## Steps & Commands

### Tag your custom AMI

```bash
aws ec2 create-tags --resources ami-01efa11609c91a643 --tags Key=karpenter-ami,Value=true

