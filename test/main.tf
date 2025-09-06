module "rg" {
  source   = "../module/resource_group"
  name     = "rg-${var.environment}-core"
  location = var.location
  tags     = var.tags
}

module "vnet" {
  source               = "../module/virtual_network"
  name                 = var.vnet_name
  location             = var.location
  resource_group_name  = module.rg.name
  address_space        = var.address_space
  tags                 = var.tags
}

module "subnets" {
  source               = "../module/subnet"
  resource_group_name  = module.rg.name
  virtual_network_name = module.vnet.name
  subnets              = var.subnets
}

module "sa" {
  source              = "../module/storage_account"
  sa_prefix           = var.sa_prefix
  resource_group_name = module.rg.name
  location            = var.location
  tags                = var.tags
}

output "rg_name" { value = module.rg.name }
output "vnet_name" { value = module.vnet.name }
output "sa_name" { value = module.sa.name }