module "vpc" {

    source =  "./vpc"

}


module "ec2" {

    source = "./ec2_instance"
    subnet_id = module.vpc.subnet_id
    vpc_id = module.vpc.vpc_id
}