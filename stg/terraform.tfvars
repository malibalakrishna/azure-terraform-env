subscription_id = "00000000-0000-0000-0000-000000000000"
tenant_id       = "11111111-1111-1111-1111-111111111111"
location        = "canadacentral"
environment     = "stg"
tags = {
  owner = "platform-team"
  cost  = "cc-stg"
}
vnet_name     = "vnet-stg-hub"
address_space = ["10.30.0.0/16"]
subnets = {
  app = {
    name             = "snet-app"
    address_prefixes = ["10.30.1.0/24"]
  }
  data = {
    name             = "snet-data"
    address_prefixes = ["10.30.2.0/24"]
  }
  ingress = {
    name             = "snet-ingress"
    address_prefixes = ["10.30.3.0/24"]
  }
}
sa_prefix = "stginfra" 