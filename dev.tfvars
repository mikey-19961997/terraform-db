region = "us-east-1"

vpc_details = {
    name = "mikey-vpc"
    cidr_block = "192.168.0.0/16"
}

azs_details = {
    azs = ["us-east-1a","us-east-1b","us-east-1c"]
    public_subnets = ["192.168.0.0/24","192.168.1.0/24"]
    private_subnets = ["192.168.2.0/24","192.168.3.0/24","192.168.4.0/24","192.168.5.0/24"]
}

trigger_num = "1.1"