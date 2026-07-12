This is a realistic AWS EKS troubleshooting flow:

Created an EKS cluster using eksctl.
Installed NGINX with Helm, creating a LoadBalancer Service.
AWS automatically provisioned:
Classic ELB
ENIs
ELB Security Group
Deleted the cluster, but cleanup failed because the ELB security group remained.
CloudFormation entered DELETE_FAILED because it couldn't delete the VPC.

Identified the remaining security group:

k8s-elb-ab676867e8a144d6e9e0c0*********
Deleted the security group.
Successfully deleted the VPC and completed the CloudFormation cleanup.

This is exactly the kind of end-to-end troubleshooting scenario that interviewers often ask about, 
because it demonstrates knowledge of EKS, AWS networking, CloudFormation, and Kubernetes service lifecycle.
