
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
#### State File
 ### State file storing
  - i have moved the statefile to an object storing in our case s3
  - also i have added ressource for creating the s3
  - and added the backend  ` .tf ` file to enabale remote storing and use of the ` .tfstate` file remotly and not locally
  - also i created a DynamoDB resource to use for locking the state file to prevent concurrent modification of the infrastructre.

 > * State file *
>    you should avoid stroing the state file in the VCS as it may discolse information regarding the Inrastructure (access keys , private keys , passwords ....)
>    instead use Remote object storage with proper permissions 



