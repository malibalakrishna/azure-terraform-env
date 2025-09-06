subscription_id = "00000000-0000-0000-0000-000000000000"
tenant_id       = "11111111-1111-1111-1111-111111111111"
location        = "canadacentral"
environment     = "test"
tags = {
  owner = "platform-team"
  cost  = "cc-test"
}
vnet_name     = "vnet-test-hub"
address_space = ["10.20.0.0/16"]
subnets = {
  app = {
    name             = "snet-app"
    address_prefixes = ["10.20.1.0/24"]
  }
  data = {
    name             = "snet-data"
    address_prefixes = ["10.20.2.0/24"]
  }
  ingress = {
    name             = "snet-ingress"
    address_prefixes = ["10.20.3.0/24"]
  }
}
sa_prefix = "testinfra" 