#Step 1: Update .bashrc (Manual Step)
#vim .bashrc
#export PATH=$PATH:/usr/local/bin/
#source .bashrc

#Step 2: Start the Script
#! /bin/bash

#Step 3: Configure AWS CLI
aws configure

#Step 4: Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# Step 5: Install kops
wget https://github.com/kubernetes/kops/releases/download/v1.25.0/kops-linux-amd64

#Step 6: Make kubectl & kops Executable
chmod +x kops-linux-amd64 kubectl
#Step 7: Move Binaries to /usr/local/bin/
mv kubectl /usr/local/bin/kubectl
mv kops-linux-amd64 /usr/local/bin/kops

#Step 8: Create an S3 Bucket for Kubernetes Cluster State
aws s3api create-bucket --bucket kopss3bucket123.k8s.local --region eu-west-3
#Step 9: Enable Versioning on the S3 Bucket
aws s3api put-bucket-versioning --bucket kopss3bucket123.k8s.local --region eu-west-3 --versioning-configuration Status=Enabled
#Step 10: Set the KOPS_STATE_STORE Variable
export KOPS_STATE_STORE=s3://kopss3bucket123.k8s.local

#Step 11: Create a Kubernetes Cluster Using kops
kops create cluster --name yaswanth.k8s.local --zones eu-west-3 --master-count=1 --master-size t2.medium --node-count=2 --node-size t2.micro
kops update cluster --name yaswanth.k8s.local --yes --admin
