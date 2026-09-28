variable "project_id" {

  type = string

}


variable "name" {

  type = string

}


variable "region" {

  type = string

}


variable "network" {

  type = string

}


variable "subnetwork" {

  type = string

}
variable "backend_groups" {

  type = list(string)

}


variable "port" {

  type    = string

  default = "80"

}


variable "health_check_port" {

  type    = number

  default = 80

}