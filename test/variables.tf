variable "subscription_id" { type = string }
variable "tenant_id" { type = string }
variable "location" { type = string }
variable "environment" { type = string }
variable "tags" { 
  type = map(string) 
  default = {} 
  }
variable "vnet_name" { type = string }
variable "address_space" { type = list(string) }
variable "subnets" {
  type = map(object({
    name             = string
    address_prefixes = list(string)
  }))
}
variable "sa_prefix" { type = string }