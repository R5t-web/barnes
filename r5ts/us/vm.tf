module "web1" {


  source = "../modules/gce"


  project_id = module.network_host_project.project_id


  name         = "web1"

  zone         = "us-east4-a"

  machine_type = "e2-standard-4"


  tags = [

    "web-server"

  ]


  metadata = {

    startup-script = <<-EOT

      #!/bin/bash

      apt-get update

      apt-get install -y nginx

      echo "WEB1" > /var/www/html/index.html

      systemctl restart nginx

    EOT

  }


  network_interfaces = [


    {

      subnet      = module.US_untrust_vpc_subnets.subnet_self_link

      external_ip = true

    },


    {

      subnet      = module.US_trust_vpc_subnets.subnet_self_link

      external_ip = false

    },


    {

      subnet      = module.US_transit_vpc_subnets.subnet_self_link

      external_ip = false

    },


    {

      subnet      = module.US_mgt_vpc_subnets.subnet_self_link

      external_ip = false

    }


  ]


}

#########################VM2 ##########################################################

module "web2" {


  source = "../modules/gce"


  project_id = module.network_host_project.project_id


  name         = "web2"

  zone         = "us-east4-b"

  machine_type = "e2-standard-4"


  tags = [

    "web-server"

  ]


  metadata = {

    startup-script = <<-EOT

      #!/bin/bash

      apt-get update

      apt-get install -y nginx

      echo "WEB2" > /var/www/html/index.html

      systemctl restart nginx

    EOT

  }


  network_interfaces = [


  {

    subnet      = module.US_mgt_vpc_subnets.subnet_self_link

    external_ip = false

  },


  {

    subnet      = module.US_untrust_vpc_subnets.subnet_self_link

    external_ip = true

  },


  {

    subnet      = module.US_trust_vpc_subnets.subnet_self_link

    external_ip = false

  },


  {

    subnet      = module.US_transit_vpc_subnets.subnet_self_link

    external_ip = false

  }


]



}