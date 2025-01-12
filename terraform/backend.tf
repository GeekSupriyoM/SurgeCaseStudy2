terraform {
  backend "azurerm" {
    resource_group_name  = "rg-surgeAssignmentResourceGroup" # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "sasurgeterraformbackend"         # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "devtfstate"                      # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "dev.terraform.tfstate"           # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.

    client_id       = "clientid"       # Can also be set via `ARM_CLIENT_ID` environment variable.
    client_secret   = "clientsecret"   # Can also be set via `ARM_CLIENT_SECRET` environment variable.
    subscription_id = "subscriptionid" # Can also be set via `ARM_SUBSCRIPTION_ID` environment variable.
    tenant_id       = "tenantid"       # Can also be set via `ARM_TENANT_ID` environment variable.
    
  }
}