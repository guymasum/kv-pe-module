##############################################################################
# Variables File
#
# Here is where we store the default values for all the variables used in our
# Terraform code. If you create a variable with no default, the user will be
# prompted to enter it (or define it via config file or command line flags.)

# Variables which will be updated when the cookie cutter template created the solution


# General Variables for the EAI Environment
variable "general_prefix_lowercase" {
  description = "The name of the environment"
  default     = "msdemo"
}

variable "environment_name" {
  description = "The name of the environment"
  default     = "dev"
}

variable "main_resource_group" {
  description = "The name of the resource group"
  # default     = ""
}

variable "kv_resource_group" {
  description = "The name of the Key Vault resource group"
  # default     = "rg-automation-deployment"
}

variable "admin_user_id" {

  default ="a5942791-ca40-439b-869a-5dbfca1f1049"
}



variable "main_virtual_network" {
  description = "The name of the virtual network"
#  default     = "Vnet1"
}
# Used to specify common application level settings to resources
variable "default_tags" {
    type = map
    default = {
        projectcode = "NA"
        businessapp = "terraform"
        contact = "AzureSupport@imf.org"
        changerequest = "#"
    }
}

# Used to specifiy the private endpoint subnet
variable "main_pe_subnet" {
  description = "The name of the subnet of private endpoints"
  default     = ""
}
