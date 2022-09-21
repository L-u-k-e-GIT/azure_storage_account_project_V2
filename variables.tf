variable "MD_STORAGE_ACCOUNT_TIER" {
    description = "Storage Account Tier"
    type        = string
    default     = ""
  }
   
variable "MD_STORAGE_ACCOUNT_REPLICATION_TYPE" {
    description = "Storage account replication type"
    type        = string
    default     = ""
  }

variable "MD_STORAGE_ACCOUNT_ACCESS_TIER" {
    description = "Storage Account Tier"
    type        = string
    default     = ""
  }

variable "MD_STORAGE_ACCOUNT_HNS_ENABLED" {
    description = "enable hns on storage account"
    type        = bool
    default     = false
  }

variable "MD_STORAGE_ACCOUNT_FS_LARGEFILESHARE " {
    description = "enable Large File Share"
    type        = bool
    default     = false
  }


 variable "MD_STORAGE_ACCOUNT_MIN_TLS" {
    description = "Minimum version of TLS"
    type        = string
    default     = ""
  }

 variable "MD_STORAGE_ACCOUNT_WHITE_IP" {
    description = "Public IP that deploy stotage account"
    type        = list
    default     = []
  }

 variable "MD_STORAGE_ACCOUNT_SHARE_RETENTION_POLICY" {
    description = "Public IP that deploy stotage account"
    type        = string
    default     = ""
  }


 variable "MD_STORAGE_ACCOUNT_SHARE_SMB_VERSIONS" {
    description = "Supported SMB version"
    type        = list
    default     = []
  }

 variable "MD_STORAGE_ACCOUNT_SHARE_SMB_AUTH" {
    description = "Supperted SMB authentication type"
    type        = list
    default     = []
  }

  
 variable "MD_STORAGE_ACCOUNT_SHARE_SMB_KERBEROS_ENCRYPTION_TYPE" {
    description = "Supperted kerberos encryption type"
    type        = list
    default     = []
  }
   
 



variable "MD_DIAG_STORAGE_ACCOUNT" { 
 description = "Nome dello storage account diagnostics"
 type = string
 default = ""
 
}


variable "MD_RG_NAME" { 
 description = "Nome del resource group"
 type = string
 default = ""
}

variable "MD_ST_NAME" { 
 description = "Nome dello storage account "
 type = string
 default = ""
}

variable "MD_PE_NAME" { 
 description = "Nome del private endpoint "
 type = string
 default = ""
}


variable "MD_PESC_NAME" { 
 description = "Nome del private endpoint service connection "
 type = string
 default = ""
}


/*
variable "MD_PROJECT_NAME" { 
 description = "Nome dello storage accound diagnostics"
 type = string
 default = ""
}*/

variable "MD_DNS_privatelink_prefix" { 
 description = "DNS zone prefix"
 type = string
 default = ""
}


variable "MD_DNS_privatelink" { 
 description = "DNS zone name"
 type = string
 default = ""
}

/*
variable "MD_SUBSCRIPTION_PREFIX" { 
 description = "Nome dello storage accound diagnostics"
 type = string
 default = ""
}*/

variable "MD_LOCATION" { 
 description = "Nome dello storage accound diagnostics"
 type = string
 default = ""
}

/*
variable "MD_ST_PREFIX" { 
 description = "Nome dello storage accound diagnostics"
 type = string
 default = ""
}
*/

 variable "MD_PE_PREFIX" {
  type        = string
  description = "Prefisso pre private endpoint"
  default     = ""
}

 variable "MD_REGION_PREFIX" {
  type        = string
  description = "Prefisso pre private endpoint"
  default     = ""
}


variable "MD_SUBNET_ID" {
  type        = string
  description = "ID della subnet"
  default     = ""
}


variable "MD_BCK_VAULT_PREFIX" {
  type        = string
  description = "ID della subnet"
  default     = ""
}


variable "MD_BCK_POLICY_ST_PREFIX" { 
 description = "Prefisso Backup Storage Account Policy"
 type = string
 default = ""
}

variable "MD_ALL_TAGS" { }


