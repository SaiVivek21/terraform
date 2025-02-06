variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "this is RHEL9 AMI ID"
}


variable "environment" {
  default     = "prod"
}

variable "instance_type" {
  default     = "t3.micro"
}

variable "ec2_tags" {
    type = map
  default     = {
    project = "expense"
    component = "backend"
    environment = "dev"
    Name = "expense-backend-dev"
  }
}

variable "from_port" {
  type        = number
  default     = 22
}
 variable "to_port" {
   type        = number
   default     = 22
 }

 variable "cidr_blocks" {
   type        = list(string)
   default     = ["0.0.0.0/0"]
 }
 
 variable "sg_tags" {
   type        = map(string)
   default     = {
      Name : "expense-backend-dev"

   }
 }
 

 /* 
1. command line --> -var "<var-name>=<var-value>"
2. tfvars
3. env var
4. default values
5. user prompt */
 



