

module "network_host_project" {

  source = "../modules/project"


  project_name = "ranjeet-use4-network-host-prj"

  project_id = "ranjeet-use4-network-host-prj"


  folder_id = module.network_use4.folder_id

  billing_account = var.billing_account


}
module "prod_project" {

  source = "../modules/project"


  project_name = "ranjeet-use4-prod-prj"
  project_id   = "ranjeet-use4-prod-prj"


  folder_id = module.workload_use4_prod.folder_id

  billing_account = var.billing_account



  labels = {

    env = "prod"

    region = "use4"

  }

}

module "nonprod_project" {

  source = "../modules/project"


  project_name = "ranjeet-use4-nonprod-prj"

  project_id = "ranjeet-use4-nonprod-prj"


  folder_id = module.workload_use4_nonprod.folder_id

  billing_account = var.billing_account



  labels = {

    env = "nonprod"

    region = "use4"

  }

}
 
############ workload shared project ###############################

module "workload_host_project" {

  source = "../modules/project"


  project_name = "ranjeet-use4-workload-host-prj"

  project_id   = "ranjeet-use4-workload-host-prj"


  folder_id       = module.workload.folder_id

  billing_account = var.billing_account
  auto_create_network = false

}
