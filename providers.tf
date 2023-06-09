terraform {
   required_version = ">= 0.12"
   required_providers {
      azurerm = ">3.0"
   }
}

provider "azurerm" {
   subscription_id = "393e3de3-0900-4b72-8f1b-fb3b1d6b97f1"
   client_id = "068d90d3-76e6-42bb-a5dd-fef8b72733db"
   client_secret = "uUR8Q~W7ZabICcqW-~S3~WpvJmJfri0mUMDAgbeP"
   tenant_id = "7349d3b2-951f-41be-877e-d8ccd9f3e73c"
   skip_provider_registration = true
   features {}
}
