# Terraform Google Cloud Compute Engine Module

This module includes creation of Compute Engine with network interface within defined VPC subnet.

It supports creating:

* Google Compute Engine.

## Compatibility

This module is meant for use with Terraform 1.0+ and tested using Terraform 1.0+.

## Inputs

| Name      | Description    | Type                       | Default   | Required |
| :-------- | :-------       | :------------------------- | :-----    | :------- |
| project_id  | GCP project id      | string |       n/a    |  yes
| zone   | The zone that the machine should be created in       | string |       n/a    |yes
| name   | Name of the VM      | string |       n/a    |yes
| machine_type   | The machine Type of VM       | string |       n/a    |yes
| image   | The image from which to initialize this disk       | string |       n/a   |yes
| subnet   | The name or self_link of the subnetwork to attach the interface to       | string |       n/a    |yes
| tags   | A list of network tags to attach to the instance       | list(string) |       n/a    |yes
| labels   | A map of key/value label pairs to assign to the instance       | map(string) |       n/a    |yes
| metadata   | Metadata key/value pairs to make available from within the instance       | map(string) |       n/a    |yes
| service_account_email   | The service account e-mail address       | string |       n/a    |yes
| service_account_scopes   | A list of service scopes. Both OAuth2 URLs and gcloud short names are supported. To allow full access to all Cloud APIs, use the cloud-platform scope      | list|       n/a    |yes


## Outputs

| Name |  Description                       |
| :-------- | :-------------------------------- |
| project_id     |  Google Cloud project ID |
| instance_self_link    |  The URI of the instance rule  being created |
| network_name_1    |  The name of the VPC network where the VM's first network interface is created |