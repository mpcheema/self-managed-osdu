/*
.Synopsis
   Terraform Variable Configuration
.DESCRIPTION
   This file holds the Variable Configuration
*/


#-------------------------------
# Application Variables
#-------------------------------
variable "prefix" {
  description = "The workspace prefix defining the project area for this terraform deployment."
  type        = string
}

variable "randomization_level" {
  description = "Number of additional random characters to include in resource names to insulate against unexpected resource name collisions."
  type        = number
  default     = 4
}

variable "remote_state_account" {
  description = "Remote Terraform State Azure storage account name. This is typically set as an environment variable and used for the initial terraform init."
  type        = string
}

variable "remote_state_container" {
  description = "Remote Terraform State Azure storage container name. This is typically set as an environment variable and used for the initial terraform init."
  type        = string
}

variable "central_resources_workspace_name" {
  description = "(Required) The workspace name for the central_resources repository terraform environment / template to reference for this template."
  type        = string
}

variable "resource_tags" {
  description = "Map of tags to apply to this template."
  type        = map(string)
  default     = {}
}

variable "resource_tags_sdms" {
  description = "Map of tags to apply to sdms resources."
  type        = map(string)
  default     = { service = "sdms" }
}

variable "resource_group_location" {
  description = "The Azure region where data storage resources in this template should be created."
  type        = string
}

variable "data_partition_name" {
  description = "The OSDU data Partition Name."
  type        = string
  default     = "opendes"
}

variable "log_retention_days" {
  description = "Number of days to retain logs."
  type        = number
  default     = 30
}

variable "storage_replication_type" {
  description = "Defines the type of replication to use for this storage account. Valid options are LRS*, GRS, RAGRS and ZRS."
  type        = string
  default     = "GZRS"
}

variable "storage_containers" {
  description = "The list of storage container names to create. Names must be unique per storage account."
  type        = list(string)
}

variable "storage_containers_dp_airflow" {
  description = "The list of storage container names to create for data partition airflow"
  type        = list(string)
}
variable "blob_cors_rule" {
  type = list(
    object(
      {
        allowed_origins    = list(string)
        allowed_methods    = list(string)
        allowed_headers    = list(string)
        exposed_headers    = list(string)
        max_age_in_seconds = number
  }))
  default     = []
  description = "List of CORS Rules to be applied on the Blob Service."
}

variable "cosmosdb_replica_location" {
  description = "The name of the Azure region to host replicated data. i.e. 'East US' 'East US 2'. More locations can be found at https://azure.microsoft.com/en-us/global-infrastructure/locations/"
  type        = string
}

variable "cosmosdb_consistency_level" {
  description = "The level of consistency backed by SLAs for Cosmos database. Developers can chose from five well-defined consistency levels on the consistency spectrum."
  type        = string
  default     = "Session"
}

variable "cosmosdb_automatic_failover" {
  description = "Determines if automatic failover is enabled for CosmosDB."
  type        = bool
  default     = true
}

variable "cosmos_databases" {
  description = "The list of Cosmos DB SQL Databases."
  type = list(object({
    name       = string
    throughput = number
  }))
  default = []
}

variable "cosmos_sql_collections" {
  description = "The list of cosmos collection names to create. Names must be unique per cosmos instance."
  type = list(object({
    name                  = string
    database_name         = string
    partition_key_path    = string
    partition_key_version = number
  }))
  default = []
}

variable "sb_sku" {
  description = "The SKU of the namespace. The options are: `Basic`, `Standard`, `Premium`."
  type        = string
  default     = "Standard"
}

variable "sb_topics" {
  type = list(object({
    name                = string
    enable_partitioning = bool
    subscriptions = list(object({
      name               = string
      max_delivery_count = number
      lock_duration      = string
      forward_to         = string
    }))
  }))
  default = [
    {
      name                = "topic_test"
      enable_partitioning = true
      subscriptions = [
        {
          name               = "sub_test"
          max_delivery_count = 1
          lock_duration      = "PT5M"
          forward_to         = ""
        }
      ]
    }
  ]
}

variable "elasticsearch_endpoint" {
  type        = string
  description = "endpoint for elasticsearch cluster"
  default     = "https://6b466700bac34ad5821392421d6dcc97.southcentralus.azure.elastic-cloud.com:9243"
}

variable "elasticsearch_username" {
  type        = string
  description = "username for elasticsearch cluster"
  default     = "elastic"
}

variable "elasticsearch_password" {
  type        = string
  description = "password for elasticsearch cluster"
  default     = "N7nKnKIYOUsMNXXqRDuUn8Qo"
}


variable "feature_flag" {
  description = "(Optional) A toggle for incubator features"
  type = object({
    storage_mgmt_policy_enabled = bool
  })
  default = {
    storage_mgmt_policy_enabled = false
  }
}

variable "service_resources_workspace_name" {
  description = "(Required) The workspace name for the service_resources repository terraform environment / template to reference for this template."
  type        = string
}

variable "sa_retention_days" {
  description = "Number of days that to retain data in file-staging-area"
  type        = number
  default     = 30
}
