# module "gcs-buckets" {
#   source                   = "../../modules/cloud-storage-bucket"
#   project_id               = "terraform-practice-476512"
#   bucket_name              = "hwp-gcs-usw2-snapshot-01"
#   gcs_location             = "us-west2"
#   force_destroy            = true
#   enable_versioning        = true
#   labels                   = {env = "non-prod"}
#   public_access_prevention = "enforced"
#   storage_class            = "STANDARD"
# }
# module "gcs-bucket2" {
#   source                   = "../../modules/cloud-storage-bucket"
#   project_id               = "terraform-practice-476512"
#   bucket_name              = "hwp-gcs-usw2-snapshot-02"
#   gcs_location             = "us-west2"
#   force_destroy            = true
#   enable_versioning        = true
#   labels                   = {env = "non-prod"}
#   public_access_prevention = "enforced"
#   storage_class            = "STANDARD"vpc
# }