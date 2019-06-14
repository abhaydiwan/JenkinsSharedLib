# Provider configuration
provider "aws" {
  region = "us-east-1"
  aws_access_key_id="AKIATC2IKZVDMGCSWSHA"
  aws_secret_access_key="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"

  
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
