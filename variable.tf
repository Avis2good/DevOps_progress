variable "profile" {
  type    = string
  default = "default"
}

variable "region-main" {
  type    = string
  default = "us-east-1"
}

variable "external_ip" {
  type    = string
  default = "0.0.0.0/0"
}

variable "master-count" {
  type    = number
  default = 1
}

variable "instance-type" {
  type    = string
  default = "t3.micro"
}

variable "webserver-port" {
  type    = number
  default = 8080
}