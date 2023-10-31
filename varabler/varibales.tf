variable "rgnavn"{
type = string
default= "storageagk_rg"
}

variable "location"{
    type = string
    default = "norwayeast"
}

variable "storage_account_name"{
    type = string
    default = "agkstorage"
}

variable "hbutestcont-lab01"{
    type = string
    default = "hbutestcont-lab01"
}
variable "hbutestblob-lab01" {
    type = string
    default = "tulltxt.txt"
  }
