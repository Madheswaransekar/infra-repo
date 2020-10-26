# infra-repo

# Jenkins Server:

For this task, I have provisioned Amazon Linux AMI and install Jenkins and its pre-requistions. 

Please refer the Instruction file for installation details.
https://github.com/Madheswaransekar/infra-repo/blob/main/Instruction

# infra.yml : (Cloudformation template used to provision the basci netwrok resource as one time activity)

<img width="1020" alt="Screen Shot 2020-10-26 at 7 20 57 AM" src="https://user-images.githubusercontent.com/72896901/97167083-9c33c280-175c-11eb-9287-beb7d46840dc.png">


A GIT repo to create Infrastructure provisioning using Cloudformation templates. T
This repo have the list of required infrastructure components as nested stack in 2AZs to deploy an application in ECS cluster.

vpc & sg - AWS Infra template - create VPC, private and public subnets in 2 AZ. Internet GW, NAT GW for access to private subnet and security group.

iam-role : IAM role tat ecs agent to communicate to ec2 and role give acces ECS to manage and update the load balancer to find the containers, so that traffic will reach to containers.

alb and ecs cluster & services - ALB used to rooute the traffic to container. Docker application container that deploy the application on ECS cluster that pull the image from ECR.

This AWS infrastructure setup was in the assumption of deploy the java/node.js application on ECS cluster. ALB which route the traffic to the ECS cluster in the 2 AZs.
