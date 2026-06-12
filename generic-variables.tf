variable "rg_name" {
  description = "name of the resource group"
  type        = string #list of string #map #boolean
  #it will accept only on single value and that value should be string
  default = "AVday2-ter-RG3"
}

variable "location" {
  description = "location of the resource group"
  type        = string
  default     = "EastUS"
}


variable "environment" {
  type    = string
  default = "Dev"
}

variable "business_unit" {
  type    = string
  default = "SAP"
}

variable "subnet_name" {
  type    = string
  default = "web-subnet"
}

variable "subnet_address_prefixes" {
  type    = list(string)
  default = ["10.0.1.0/24"]
}