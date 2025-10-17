#!/bin/bash
set -euo pipefail

echo "Updating packages..."
sudo apt-get update -y
sudo apt-get install -y curl unzip apt-transport-https ca-certificates gnupg lsb-release

echo "Downloading AWS CLI v2..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

echo "Unzipping AWS CLI installer..."
unzip -q awscliv2.zip

echo "Installing AWS CLI v2..."
sudo ./aws/install --update

if command -v aws &> /dev/null; then
    echo "AWS CLI installed successfully: $(aws --version)"
else
    echo "AWS CLI installation failed."
    exit 1
fi

echo "Cleaning up AWS CLI installation files..."
rm -rf aws awscliv2.zip

echo "Downloading kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

echo "Installing kubectl..."
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm kubectl

echo "kubectl version:"
kubectl version --client --short

echo "Installing Helm..."
curl -fsSL https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

echo "helm version:"
helm version --short

echo "All tools installed successfully!"

