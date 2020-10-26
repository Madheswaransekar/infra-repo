# infra-repo

# Jenkins Server

For this task, I have provisioned Amazon Linux AMI and install Jenkins and its pre-requistions. 

Please refer the Instruction file for installation details.
https://github.com/Madheswaransekar/infra-repo/blob/main/Instruction

Based on the requirement, I have made Jenkins app to public access by below public DNS
http://madhes.jenkinssetup.click:8080

# infra.yml
(Cloudformation template used to provision the basic netwrok resource as one time activity)

This stack is used to provision the VPC network resources includes Subnet,sg, Gateway,etc. As we have default subnets and default VPC components like NATgw, route table, this CFT template is used to create the private network components to deploy our application in Private subnets.

https://github.com/Madheswaransekar/infra-repo/blob/main/infra.yml

I have proposed the below architecture to deploy our container application in AWS ECS Cluster in Private subnet.

<img width="1020" alt="Screen Shot 2020-10-26 at 7 20 57 AM" src="https://user-images.githubusercontent.com/72896901/97167083-9c33c280-175c-11eb-9287-beb7d46840dc.png">

# Completed List:
1. Jenkins Installation and public access
2. Created cft stack for privte subnet

# Pending Task:
1. Create stack to deploy application ( ALB, ECS)
