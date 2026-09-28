# Terraform Google Cloud VPC Module

This module allows creation of a VPC Network in gcp .

It supports creating:

* VPC network.
* Optionally enabling the network as a Shared VPC host.

## Compatibility

This module is meant for use with Terraform 1.0+ and tested using Terraform 1.0+.

## Inputs

| Name      | Description    | Type                       | Default   | Required |
| :-------- | :-------       | :------------------------- | :-----    | :------- |
| project_id   | The ID of the project where this VPC will be created       | any |       n/a    |      yes    |
| network_name   | The name of the network being created       | any |       n/a    |      yes    |
| routing_mode   | The network routing mode (default 'GLOBAL')       | string |       "GLOBAL"    |      no    |
| shared_vpc_host   | Makes this project a Shared VPC host if 'true' (default 'false')       | bool |       false    |      no    |
| auto_create_subnetworks   | When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically across the 10.128.0.0/9 address range. When set to false, the network is created in 'custom subnet mode' so the user can explicitly connect subnetwork resources.       | bool |       false    |      no    |
| delete_default_internet_gateway_routes   | If set, ensure that all routes within the network specified whose names begin with 'default-route' and with a next hop of 'default-internet-gateway' are deleted      | bool |       false    |      no    |
| mtu   | The network MTU (If set to 0, meaning MTU is unset - defaults to '1460'). Recommended values: 1460 (default for historic reasons), 1500 (Internet default), or 8896 (for Jumbo packets). Allowed are all values in the range 1300 to 8896, inclusively.      | number |       0    |      no    |

## Outputs

| Name |  Description                       |
| :-------- | :-------------------------------- |
| network     |  The VPC resource being created |
| network_id     |  The ID of the VPC being created |
| network_name    |  The name of the VPC being created |
| network_self_link     |  The URI of the VPC being created |
| project_id     |  VPC project id |