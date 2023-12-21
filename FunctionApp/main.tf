resource "azurerm_resource_group" "fun-grp" {
  name = "function-grp"
  location = "East US"
}

resource "azurerm_storage_account" "fun-str-acc" {
  name = "straccc67269789"
  location = azurerm_resource_group.fun-grp.location
  resource_group_name = azurerm_resource_group.fun-grp.name
  account_tier = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_service_plan" "fun-srv-plan" {
  name = "fun-srv-plan"
  location = azurerm_resource_group.fun-grp.location
  resource_group_name = azurerm_resource_group.fun-grp.name
  os_type = "Linux"
  sku_name = "Y1"
}

resource "azurerm_linux_function_app" "fun-app" {
  name = "funapp61734691"
  location = azurerm_resource_group.fun-grp.location
  resource_group_name = azurerm_resource_group.fun-grp.name
  storage_account_name = azurerm_storage_account.fun-str-acc.name
  storage_account_access_key = azurerm_storage_account.fun-str-acc.primary_access_key
  service_plan_id = azurerm_service_plan.fun-srv-plan.id
  site_config {
  }
 } 
  
