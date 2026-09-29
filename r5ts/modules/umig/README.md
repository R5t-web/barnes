# Google Cloud Platform Instance Group Module
This Module creates the unmanaged instance group with defined named ports as per requirements.

It supports creating:

* Google Unmanaged Instance group.

## Compatibility

This module is meant for use with Terraform 1.0+ and tested using Terraform 1.0+.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| named\_ports | Named name and named port | <pre>list(object({<br>    name = string<br>    port = number<br>  }))</pre> | `[]` | no |
| name | The name of the instance group | string | n/a | yes |
| project | The ID of the project in which the resource belongs | string | n/a | yes |
| zone | The zone that this instance group should be created in | string | n/a | yes |
| instances | The list of instances in the group | list | null | no

## Outputs

| Name | Description |
|------|-------------|
| umig_details |List of all details for unmanaged instance groups |
| self_links | List of self-links for unmanaged instance groups |




