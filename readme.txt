This is a list of elemets that I created beforehand
before starting to create all of the resources and connect them with each other
then I proceeded to create all of the elements in different modules as it can be seen
in the file structure.

Are elements to create ‘-’

-VPC
-Public subnet
-NACL
-Internet Gateway

-Network load balancer
-NLB - Security group
	Should be internet facing and should allow requests to the port 80 to come out the the security group of the application load balancer
-Target group to the ALB

-Application load balancer
-ALB - security group
	Should allow TCP requests coming to the port 80 from the security group of the network load balancer to come in and should allow TCP traffic to the port 80 	to come out.
-Target group to the EC2 instances
*Listeners - The application load balancer should direct the requests to the target servers

-EC2 instances (3)
-EC2 security group 
	Should allow requests coming from the SG of the application load balancer to come and should allow the response to come out which is automatic.
*When created the EC2 instances should be tagged to be added to the target group for the Application Load Balancer 