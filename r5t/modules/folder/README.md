# Terraform Google Cloud Platform Folder Module

This module allows creation of Google folder in Google Cloud Platform.

It supports creating:

* Google Folder.

## Compatibility

This module is meant for use with Terraform 1.0+ and tested using Terraform 1.0+.

## Inputs

| Name      | Description    | Type                       | Default   | Required |
| :-------- | :-------       | :------------------------- | :-----    | :------- |
| parent  | The resource name of the parent Folder or Organization. Must be of the form folders/folder_id or organizations/org_id      | string |       n/a    |  yes
| folder_name   | The folder’s display name. A folder’s display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name      | string |       n/a    |yes

## Outputs

| Name |  Description                       |
| :-------- | :-------------------------------- |
| folder_name     |  The name of the created folder |
| folder_lifecycle_state     |  The lifecycle state of the folder |
| folder_create_time     |  Timestamp when the Folder was created |