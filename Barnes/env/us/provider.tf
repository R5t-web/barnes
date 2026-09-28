# provider "google" {
#   project = "terraform-practice-476512"
# }

# provider "google-beta" {
#   project = "terraform-practice-476512"
# }

# terraform {
#   required_version = ">= 1.5.0"

#   required_providers {
#     google = {
#       source  = "hashicorp/google"
#       version = ">= 5.0.0, < 7.0.0"
#     }
#   }
# }

terraform {


  required_version = ">= 1.5.7, < 2.0.0"


  required_providers {


    google = {

      source  = "hashicorp/google"

      version = "= 4.84.0"

    }


    google-beta = {

      source  = "hashicorp/google-beta"

      version = "= 4.84.0"

    }

  }

}

 
 