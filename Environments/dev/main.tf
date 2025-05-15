module "resource_group" {
  source                  = "../../Module/azurerm_resource_group"
  resource_group_name     = var.rg_name
  resource_group_location = var.rg_location
}
module "storage_group" {
  source                   = "../../Module/azurerm_storage_account"
  resource_group_name      = var.rg_name
  resource_group_location  = var.rg_location
  storage_account_name     = var.stg_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  depends_on               = [module.resource_group]
}


