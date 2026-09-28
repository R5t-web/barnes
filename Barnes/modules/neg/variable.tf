variable "project_id" {

  type        = string

  description = "The ID of the project where the NEG will be created."

}
 
variable "name" {

  type        = string

  description = "Name of the network endpoint group."

}
 
variable "zone" {

  type        = string

  description = "The zone where the network endpoint group is located."

}
 
variable "network" {

  type        = string

  description = "The network to which all network endpoints belong."

}
 
variable "network_endpoint_type" {

  type        = string

  default     = "GCE_VM_IP"

  description = "Type of network endpoints in this group. Defaults to GCE_VM_IP."

}
 
variable "description" {

  type        = string

  default     = null

  description = "An optional description of this resource."

}
variable "subnetwork" {

  type        = string

  description = "Subnetwork used by the NEG"

}

 
