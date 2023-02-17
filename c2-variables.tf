# Input Variables
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "ap-south-1"
}
variable "availability_zones" {
  type = list(string)
  default = ["ap-south-1a","ap-south-1b","ap-south-1c","ap-south-1-ccu-1a"]
}
variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0f8ca728008ff5af4" # Amazon2 Linux AMI ID
}

variable "ec2_instance_count" {
  description = "EC2 Instance Count"
  type        = number
  default     = 4
}

variable "subnet_cidr_blocks" {
  type = list
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"] 
}