module "vpc" {

    source =  "./vpc"

}


module "ec2" {

    source = "./ec2_instance"
    subnet_id = module.vpc.subnet_id
}