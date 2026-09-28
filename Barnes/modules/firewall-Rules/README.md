# Terraform Google Cloud VPC Firewall Rules Module

This module allows creation of custom VPC firewall rules.

It supports creating:

* Google Cloud VPC firewall Rules.

## Compatibility

This module is meant for use with Terraform 0.13+ and tested using Terraform 1.0+.

## Inputs

| Name      | Description    | Type                       | Default   | Required |
| :-------- | :-------       | :------------------------- | :-----    | :------- |
| project_id  | GCP project id      | string |       n/a    |  yes
| network_name   | Name of the network this set of firewall rules applies to       | string |       n/a    |yes
| rules   | List of custom rule definitions (refer to variables file for syntax)      | <pre>list(object({<br>    name                    = string<br>    description             = string<br>    direction               = string<br>    priority                = number<br>    ranges                  = list(string)<br>    source_tags             = list(string)<br>    source_service_accounts = list(string)<br>    target_tags             = list(string)<br>    target_service_accounts = list(string)<br>    allow = list(object({<br>      protocol = string<br>      ports    = list(string)<br>    }))<br>    deny = list(object({<br>      protocol = string<br>      ports    = list(string)<br>    }))<br>    log_config = object({<br>      metadata = string<br>    })<br>  }))</pre>  |       []   |no
    



## Outputs

| Name |  Description                       |
| :-------- | :-------------------------------- |
| firewall_rules     |  The created firewall rule resources |
