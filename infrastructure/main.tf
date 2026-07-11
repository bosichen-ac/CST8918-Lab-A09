# Define the resource group
resource "azurerm_resource_group" "rg" {
  name     = "${var.label_prefix}-A09-rg"
  location = var.region
}

resource "azurerm_storage_account" "storage" {
  name                     = ${var.label_prefix}storageacc
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location

  account_tier             = "Standard"
  account_replication_type = "LRS"
}