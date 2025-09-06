subscription_id = "00000000-0000-0000-0000-000000000000"
tenant_id       = "11111111-1111-1111-1111-111111111111"
location        = "canadacentral"
environment     = "dev"
tags = {
  owner = "platform-team"
  cost  = "cc-dev"
}
vnet_name     = "vnet-dev-hub"
address_space = ["10.10.0.0/16"]
subnets = {
  app = {
    name             = "snet-app"
    address_prefixes = ["10.10.1.0/24"]
  }
  data = {
    name             = "snet-data"
    address_prefixes = ["10.10.2.0/24"]
  }
  ingress = {
    name             = "snet-ingress"
    address_prefixes = ["10.10.3.0/24"]
  }
}
sa_prefix = "devinfra" 