variable "name" {
    type = string
    default = "mini-task"
}

variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable public_cidr_block {
    type = map(string)
    default = {
        public_1 = "10.0.1.0/24"
        public_2 = "10.0.2.0/24"
    }
}

variable private_cidr_block {
    type = map(string)
    default = {
        private_1 = "10.0.21.0/24"
        private_2 = "10.0.22.0/24"
    }
}

variable public_az {
    type = map(string)
    default = {
        public_1 = "us-east-1a"
        public_2 = "us-east-1b"
    }
}

variable private_az {
    type = map(string)
    default = {
        private_1 = "us-east-1a"
        private_2 = "us-east-1b"
    }
}

variable "ingress_ports" {
    type = map(number)
    default = {
        ssh = 20
        http = 80
        https = 443
    }
}