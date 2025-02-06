variable "instances"{
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend ="t3.micro"
    }
}

variable "domain_name"{
    default = "basam.site"
}

variable "zone_id"{
    default = "Z082073638K70HX4JZ6A8"
}