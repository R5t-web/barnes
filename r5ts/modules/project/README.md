# Terraform Google Cloud Platform Project Module

This module allows creation of Google Project in Google Cloud Platform.

It supports creating:

* Google Project.

## Compatibility

This module is meant for use with Terraform 1.0+ and tested using Terraform 1.0+.

## Inputs

| Name      | Description    | Type                       | Default   | Required |
| :-------- | :-------       | :------------------------- | :-----    | :------- |
| project_name   | The name for the project      | string |       n/a    |  yes
| project_id   | The ID to give the project      | string |       n/a    |yes
| org_id   | The organization ID      | string |       n/a    |yes
| folder_id   | The ID of a folder to host this project      | string |       n/a    |yes
| billing_account   | The ID of the billing account to associate this project with      | string |       n/a    |yes
| auto_create_network   | Create the default network      | bool |       false    |no
| labels   | Map of labels for project      | map(string) |       n/a    |yes

## Outputs

| Name |  Description                       |
| :-------- | :-------------------------------- |
| project_name     |  The name of the created Project |
| project_id     |  The ID of the Project |
| project_number     |  The Number of the Project |