
# Infrastructure as Code Project
# V1
### Terraform 
#### Installation Process 
###### Use a an EC2 instance to access a Linux Environment  for installing #Terraform.
 
 - i followed the guide on the official Documentation for installing #Terraform on my Private server .
 - in my Case I've Used Ubuntu Distro. 
 - which has simplified installation process using #apt package manager .

### First Attempt 

Provisioning a simple EC2 instance.       *Success*

### Second Attempt 

- assign an existing Key .      *Success*

### Third Attempt 

- assign an existing Security  group to the newly created EC2 instance.  *Failure* !
 `LOG :`
			  ```creating EC2 Instance: InvalidParameterValue: Value () for parameter groupId is invalid. The value cannot be empty  ```

 > **Resolution** : 
	 - Using data block which is used to retireve existing security group ID and VPC ID 
	 - also don't forget to specify subnet_id to reseolve *empty* GroupId 

###  *Resulting Success*

## Using Mutli providers on the main Configue File
# V2
#### Modules
 ### EC2 Module
- i have used modules in the V2.
- i have used variables also to decouple my Configuration file .
- also i created separated output files.



