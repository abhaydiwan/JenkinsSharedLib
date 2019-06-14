# Provider configuration
provider "aws" {
  region = "us-east-1"
  access_key="AKIATC2IKZVDJ3KM4A7N"
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
