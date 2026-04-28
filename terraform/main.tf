resource "local_file" "fav_food" {
  content  = "My mom's gumbo is my favorite food!"
  filename = "fav_food.txt"
}

module "vpc_net_wk7hw" {
  source     = "terraform-google-modules/network/google"
  version    = "18.0.0"
  network_name = "vpc-net-wk7hw"
  project_id   = "hjsprojects"
  subnets = [
    {
      subnet_name           = "subnet-wk7hw"
      subnet_ip             = "10.0.0.0/18"
      subnet_region         = "us-central1"
      subnet_private_access = true
    }
  ]
}
