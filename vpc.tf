module "network" {

  source  = "app.terraform.io/linux-python/network/google"
  version = "2.5.0"
  project_id    = var.project

  network_name  = "db-net2"


  subnets = [
    {
      subnet_name   = "gaurav-subnet"
      subnet_ip     = "10.100.10.0/24"
      subnet_region = var.region
    }
  ]

}