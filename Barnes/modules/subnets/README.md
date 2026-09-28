# Terraform Google Cloud Subnets Module

This module allows creation of Subnets within VPC Network in gcp by defining subnet ranges.

It supports creating:

* Subnets within vpc network.

## Compatibility

This module is meant for use with Terraform 0.13+ and tested using Terraform 1.0+.


## Inputs

| Name      | Description    | Type                       | Default   | Required |
| :-------- | :-------       | :------------------------- | :-----    | :------- |
| network_name   | The name of the network where subnets will be created       | any |       n/a    |      yes    |
|  project_id         | The ID of the project where subnets will be created               |      any                      |     n/a      |       yes   |
|      secondary_ranges     |  Secondary ranges that will be used in some of the subnets              |   map(list(object({ range_name = string, ip_cidr_range = string })))                         |     {}      |     no     |
|   subnets        |    The list of subnets being created            |      list(map(string))                      |   n/a        |   yes       |
|           |                |                            |           |          |

## Outputs

| Name |  Description                       |
| :-------- | :-------------------------------- |
| subnets     |  The created subnet resources |



