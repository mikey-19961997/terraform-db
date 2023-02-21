variable "region" {
    type = string
}

variable "vpc_details" {
    type = object({
        name = string
        cidr_block = string
    })
}

variable "azs_details" {
    type = object({
        azs = list(string)
        public_subnets = list(string)
        private_subnets = list(string)
    })
}

variable "trigger_num" {
    type = string
}