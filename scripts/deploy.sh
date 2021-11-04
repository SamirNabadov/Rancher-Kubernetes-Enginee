#!/usr/bin/bash

#Configuring Kubernetes Cluster and Deploying Helm Charts

#Assignment of variables        
SECONDS=0
project_dir=$(pwd)

# Configuring Kubernetes Cluster with RKE
ansible-playbook $project_dir/rke.yaml -i inventory
if [ $? -eq 0 ];
then
    echo "Kubernetes cluster was successfully configured!"
else
    echo "Failed!"
    exit 1
fi

# Installing Helm charts to Kubernetes Cluster
ansible-playbook $project_dir/helm.yaml -i inventory
if [ $? -eq 0 ];
then
    echo "Helm charts was successfully deploye"
else
    echo "Failed!"
    exit 1
fi

echo "---------------------------------------"
echo "Time Spent Configuring Cluster Environment: $(($SECONDS / 3600))hrs $((($SECONDS / 60) % 60))min $(($SECONDS % 60))sec"



