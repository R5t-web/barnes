module "Shared_Infra" {

  source = "../modules/folder"

  folder_name = "Shared-Infra"

  parent = "organizations/170769741543"

}


module "network" {

  source = "../modules/folder"

  folder_name = "Network"

  parent = "organizations/170769741543"

}


module "workload" {

  source = "../modules/folder"

  folder_name = "Workload"

  parent = "organizations/170769741543"

}

############## Sub-Folders #############################
module "Identity_Gov" {

  source = "../modules/folder"

  folder_name = "ID-GOV"

  parent = module.Shared_Infra.folder_name

}

module "network_use4" {

  source = "../modules/folder"

  folder_name = "US-E4"

  parent = module.network.folder_name

}

module "workload_use4_prod" {

  source = "../modules/folder"

  folder_name = "US-E4-Prod"

  parent = module.workload.folder_name

}


module "workload_use4_nonprod" {

  source = "../modules/folder"

  folder_name = "US-E4-NonProd"

  parent = module.workload.folder_name

}
