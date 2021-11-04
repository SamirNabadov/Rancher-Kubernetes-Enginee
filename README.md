Rancher Kubernetes Enginee
================================


Install & Configure Kubernetes HA CLuster with RKE (Rancher Kubernetes Enginee) and Deploying Helm Charts.


Configured software and tools
------------
* RKE v1.3.1
* Kubernetes v1.21.5
* Docker 20.10.10
* kubectl 1.22.1
* Helm 3.7.1
* Cert-manager v1.5.1
* Rancher v2.6.2
* Metallb 2.5.10
* Ingress-nginx v1.0.4


Basic settings
------------
* Installing and Configuring Kubernetes Cluster with rke
* Used Docker as Container Runtime
* Used MetalLB for load-balancer implementation, configured configmap for IP ranges
* Ingress-nginx is configured as a statefullset and takes Loadbalancer IP from MetalLB
* Used Rancher to control the Kubernetes cluster via UI
* Takes certificates from Cert-manager in setting up the Rancher


Currently tested on these Operating Systems
* Linux/RHEL/CentOS 7


Requirements
------------
* Ansible 2.9.6


Dependencies
------------
* Requires elevated root privileges
* Copy Ansible control machine user's public SSH key (usually called id_rsa.pub) into the remote machine working directory
* Add hosts address and names for VMs : inventory


Running the Deployment
----------------------

On the Ansible Control Machine  

__To deploy__

`./scripts/deploy.sh`


Author Information
------------------

Samir Nabadov
