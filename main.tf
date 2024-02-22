
resource "azurerm_resource_group" "app_rg" {
  name     = "rg-${var.app_name}-${var.env}"
  location = var.rg_location
  tags = merge(tomap({
    "Env" = var.env
  }),var.default_tags, var.tags)
}

resource "azurerm_storage_account" "app_sa" {
  name                     = "sa${var.app_name}${var.env}"
  resource_group_name      = azurerm_resource_group.app_rg.name
  location                 = azurerm_resource_group.app_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


resource "azurerm_service_plan" "app_sp" {
  name                = "asp-${var.app_name}"
  resource_group_name = azurerm_resource_group.app_rg.name
  location            = azurerm_resource_group.app_rg.location
  os_type             = var.os_type
  sku_name            = var.sku_name
  tags = merge(tomap({
    "Env" = var.env
  }),var.default_tags, var.tags)
}

resource "azurerm_linux_function_app" "app_fn" {
  name                = "fn-${var.app_name}"
  resource_group_name = azurerm_resource_group.app_rg.name
  location            = azurerm_resource_group.app_rg.location
  service_plan_id            = azurerm_service_plan.app_sp.id
  storage_account_name       = azurerm_storage_account.app_sa.name
  storage_account_access_key = azurerm_storage_account.app_sa.primary_access_key
  site_config {}
  identity {
    type = "SystemAssigned"
  }
  tags = merge(tomap({
    "Env" = var.env
  }),var.default_tags, var.tags)
}