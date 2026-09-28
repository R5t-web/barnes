variable "name" {
  type = string
  description = "The name of the instance group"
}

variable "project" {
  type = string
  description = "The ID of the project in which the resource belongs"
}

variable "zone" {
  type = string
  description = "The zone that this instance group should be created in"
}

variable "instances" {
  type = list
  default = []
  description = "The list of instances in the group"
}


variable "named_ports" {
  description = "Named name and named port"
  type = list(object({
    name = string
    port = number
  }))
  default = []
}