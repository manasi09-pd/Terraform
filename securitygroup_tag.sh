#!/bin/bash

CLUSTER_NAME="my-eks-cluster"

# Get the first nodegroup name (optional, only if you need it)
NODEGROUP=$(aws eks list-nodegroups --cluster-name "$CLUSTER_NAME" \
  --query 'nodegroups[0]' --output text)

# Get the EKS cluster security group
SECURITY_GROUP_ID=$(aws eks describe-cluster \
  --name "$CLUSTER_NAME" \
  --query "cluster.resourcesVpcConfig.clusterSecurityGroupId" \
  --output text)

# Debugging check
echo "Security Group ID: $SECURITY_GROUP_ID"
echo "Cluster Name: $CLUSTER_NAME"

# Tag the security group for Karpenter discovery
aws ec2 create-tags \
  --resources "$SECURITY_GROUP_ID" \
  --tags Key=karpenter.sh/discovery,Value="$CLUSTER_NAME"
