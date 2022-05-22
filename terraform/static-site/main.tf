provider "aws" {
    region=var.region
    profile=var.profile
}

resource "aws_instance" "site" {
    ami = " ami-0e3a6731b6d2546df"
    instance_type="t2.micro"
    key_name="devops_activities"
    vpc_security_group_ids = ["sg-028856b63c345d32d","sg-0860d084e404d694c"]
        tags = {
            Name = var.name
            group = var.group
        }
}