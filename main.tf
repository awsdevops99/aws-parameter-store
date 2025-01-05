terraform {
  backend "s3" {
    bucket = "awsom-terraform-state"
    key    = "parameter-store/terraform.state"
    region = "us-east-1"

  }
}


resource "aws_ssm_parameter" "" {
    count = length(var.parameters)
     name = var.parameters[count.index].name
     type = var.parameters[count.index].type
     value = var.parameters[count.index].value
}
  
