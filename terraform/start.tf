
provider "aws" {
    region = "us-west-2"
}


resource "aws_vpc" "myvpc"{
    cidr_block="10.10.0.0/16"

    tags= {
        Name=var.inptag
        }
}


variable "vpcname" {
  type = string
  default = "philpc"
  }


variable "port"{
    type = number
    default = 22
} 

variable "enabled" {
    type= bool
    default="false"
}

variable "mylist" {
    type=list(string)
    default=["val1", "val2", "val3"]
  
}
variable "treasuremap" {
    type = map
    default={
        key1= "phil"
        key2="value2"
    }
  
}

variable inptag {
    type = string
    description = "test input"
}

output "myID" { 
 value = aws_vpc.myvpc.id   
  
}
