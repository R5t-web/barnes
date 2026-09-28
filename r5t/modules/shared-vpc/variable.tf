variable "host_project_id" {

  type = string

}


variable "service_projects" {

  type = list(string)

  default = []

}


variable "vpc_name" {

  type = string

}


variable "subnets" {

  type = map(object({

    region = string

    cidr   = string

  }))

}