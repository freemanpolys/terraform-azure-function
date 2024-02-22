# ====================== Default required variables =============== 
variable "tags" {
  type = map(string)
  description = "Tags"
}

variable "default_tags" {
  type = map(string)
  description = "default_tags"
  default = {
    "Type" = "az-function",
    "ManagedBy" = "Terraform"
  }
}

variable "env" {
    type = string
    description = "App service environment"
    default = "dev"
}

# ====================== End =============== 

variable "app_name" {
    type = string
    description = "Application name"
}

variable "os_type" {
   type = string
   default = "Linux"
}
 
variable "sku_name" {
   type = string
   default = "Y1"
}

variable "rg_location" {
   type = string
   default = "France Central"
}
