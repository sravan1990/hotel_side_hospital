## Project Objective
&nbsp;&nbsp;  To create an automated provisioned infrastructure using Terraform, EKS cluster, EC2 instances, and Jenkins server for Hotel-Side Hospital

## Tools used
  - Terraform
  - EKS
  - EC2
  - Jenkins
  - Github
  - AWS (EC2 instance)

## Description
&nbsp;&nbsp;  Hotel Side Hospital, a globally renowned hospital chain headquartered in Australia, is aiming to streamline its operation by setting up an infrastructure within the hotel premises. However, in order to maintain seamless functioning and scalability, they require fully managed virtual machines (VMs) on the Amazon Web Services (AWS) platform.
The organization seeks an automated provisioned infrastructure solution that can enable them to effortlessly create new Amazon Elastic Kubernetes Service (EKS) clusters, whenever required, and promptly delete them when they are no longer needed. This will optimize resource allocation and enhance operational efficiency.

## Tasks
&nbsp;&nbsp;&nbsp; Refer to this complete list of tasks involved to complete the project
1. Validate if Terraform is installed in the virtual machine
2. Install AWS CLI
3. Navigate to AWS IAM service, and get AWS Access key and Secret Key to connect AWS with the AWS CLI
4. Export the AWS Access Key, Secret Key, and Security Token to configure AWS CLI connectivity with AWS Cloud
5. Create terraform scripts to create a new VM using autoscaling which includes the following files:
   - autoscaling.tf 
   - VPC.tf 
   - internetgateway.tf 
   - subnets.tf (public subnet) 
   - routetable.tf 
   - Route_table_association_with_public_subnet
6. Execute terraform scripts
7. Connect to an instance and install the stress utility (The stress files are provided along with the problem statement document.)
8. Validate if autoscaling is working by putting load on autoscaling group
   
## Outcome
&nbsp;&nbsp;&nbsp; The successful completion of the project will enable Hotel-Side Hospital
-  To automate provisioned infrastructure solution that will enable them to effortlessly create new Amazon Elastic Kubernetes Service (EKS) clusters, whenever required, and promptly delete them when they are no longer needed.
-  This will optimize resource allocation and enhance operational efficiency.
-  To improve its overall application deployment process.
-  Deliver better products and services to its customers.
