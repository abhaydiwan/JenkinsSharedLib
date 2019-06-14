# Provider configuration
provider "aws" {
  region = "us-east-1"
  access_key="AKIATC2IKZVDMGCSWSHA"
  secret_key="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"

  
}

#terraform {
#backend "s3"{
 #  bucket= "abhay-test"
 #  key = "sandbox/test/ec2instance"
 #  region = "us-east-1"
#}
 # }

module "create-ec2"
  {
instance_type = "t2.micro"
source = "../../../modules/create-ec2-instance"

}
