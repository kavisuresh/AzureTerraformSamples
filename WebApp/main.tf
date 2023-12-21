resource "azurerm_resource_group" "web_grp" {
  name = "WebAppGrp"
  location = "East US"
}

resource "azurerm_service_plan" "web_srv_plan" {
  name = "WebAppPlan"
  location = "East US"
  resource_group_name = azurerm_resource_group.web_grp.name
  os_type = "Linux"
  sku_name = "F1"
}

resource "azurerm_linux_web_app" "web_app" {
  name = "WebApp9875353"
  location = "East US"
  resource_group_name = azurerm_resource_group.web_grp.name
  service_plan_id = azurerm_service_plan.web_srv_plan.id
  site_config {
    always_on = "false"
  }
}
