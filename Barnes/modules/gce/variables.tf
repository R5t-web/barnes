variable "project_id" {
  type = string
  description = "The project id for putting the VM"
}

variable "zone" {
  type = string
  description = "The zone that the machine should be created in"
  default = ""
}

variable "name" {
  type = string
  description = "Name of the VM"
}

variable "machine_type" {
  type = string
  description = "The machine Type of VM"
}

variable "image" {
  type = string
  description = "The image from which to initialize this disk"
  default = "debian-cloud/debian-9"
}

variable "subnet" {
  type = string
  description = "The name or self_link of the subnetwork to attach the interface to"
}

variable "tags" {
  type = list(string)
  description = "A list of network tags to attach to the instance"
  default = []
}

variable "labels" {
  type = map(string)
  description = "A map of key/value label pairs to assign to the instance"
  default = {}
}

variable "metadata" {
  type = map(string)
  description = "Metadata key/value pairs to make available from within the instance"
  default = {}
}

variable "service_account_email" {
  type = string
  description = "The service account e-mail address"
  default = ""
}

variable "service_account_scopes" {
  type = list
  description = "A list of service scopes. Both OAuth2 URLs and gcloud short names are supported. To allow full access to all Cloud APIs, use the cloud-platform scope"
  default = []
}
