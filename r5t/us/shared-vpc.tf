module "workload_shared_vpc" {

  source = "../modules/shared-vpc"


  host_project_id = module.workload_host_project.project_id


  service_projects = [

    module.prod_project.project_id,

    module.nonprod_project.project_id

  ]


  vpc_name = "r5t-ba-use4-shared-workload-vpc"


  subnets = {

    "r5t-ba-use4-prod-snet" = {

      region = "us-east4"

      cidr   = "10.200.2.0/24"

    }


    "r5t-ba-use4-nonprod-snet" = {

      region = "us-east4"

      cidr   = "10.200.3.0/24"

    }

  }


  depends_on = [

    google_project_service.workload_compute

  ]

}