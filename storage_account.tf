##  Storage account for project ##########
resource "azurerm_storage_account" "st_data" {
   
    name                        = var.MD_ST_NAME 
    resource_group_name         = var.MD_RG_NAME
    location                    = var.MD_LOCATION
    account_tier                = var.MD_STORAGE_ACCOUNT_TIER
    account_replication_type    = var.MD_STORAGE_ACCOUNT_REPLICATION_TYPE
    access_tier                 = var.MD_STORAGE_ACCOUNT_ACCESS_TIER 
    is_hns_enabled              = var.MD_STORAGE_ACCOUNT_HNS_ENABLED
    large_file_share_enabled    = var.MD_STORAGE_ACCOUNT_LARGEFS_ENABLED
    min_tls_version             = var.MD_STORAGE_ACCOUNT_MIN_TLS
    allow_nested_items_to_be_public  = false
    tags = var.MD_ALL_TAGS
   network_rules {
             bypass = ["AzureServices"] #to be one of [AzureServices Logging Metrics None]
             default_action   = "Deny"
             ip_rules                   = var.MD_STORAGE_ACCOUNT_WHITE_IP
        }
      
    share_properties  {
      retention_policy { days = var.MD_STORAGE_ACCOUNT_SHARE_RETENTION_POLICY}
      smb {
      versions = var.MD_STORAGE_ACCOUNT_SHARE_SMB_VERSIONS
      authentication_types = var.MD_STORAGE_ACCOUNT_SHARE_SMB_AUTH
      kerberos_ticket_encryption_type = var.MD_STORAGE_ACCOUNT_SHARE_SMB_KERBEROS_ENCRYPTION_TYPE
      channel_encryption_type = []
     }

    }

    lifecycle {
    ignore_changes = [
     tags
    ]
  }
}




#PRIVATE ENDPOINT FOR THE STORAGE ACCOUNT IN THE SAME SUBNET OF THE PROJECT




resource "azurerm_private_endpoint" "pe_st" {
  
  name                = var.MD_PE_NAME
  location            = var.MD_LOCATION
  resource_group_name = var.MD_RG_NAME
  subnet_id           = var.MD_SUBNET_ID
  tags = var.MD_ALL_TAGS
  private_dns_zone_group {
    name                 = var.MD_DNS_privatelink
    private_dns_zone_ids = ["${var.MD_DNS_privatelink_prefix}${var.MD_DNS_privatelink}"]
  }

  private_service_connection {
    name                              = var.MD_PESC_NAME
    private_connection_resource_id = azurerm_storage_account.st_data.id
    is_manual_connection              = false
    subresource_names = ["file"]
  }
  lifecycle {
    ignore_changes = [
     tags
    ]
  }

  
  depends_on = [
    azurerm_storage_account.st_data
  ]

}


output "storage_account_name" {
  value = azurerm_storage_account.st_data.name
}

output "storage_account_id" {
  
  value = azurerm_storage_account.st_data.id
}
