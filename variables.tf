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

variable "main_virtual_network" {
  description = "The name of the virtual network"
#  default     = "Vnet1"
}
# Used to specify common application level settings to resources
variable "default_tags" {
    type = map
    default = {
        Environment = "__CommonSetting_EnvironmentName_LowerCase__"
        deployed_by = "terraform"
        Application = "Azure Integration Services"
    }
}

# Used to specifiy the private endpoint subnet
variable "main_pe_subnet" {
  description = "The name of the subnet of private endpoints"
  default     = ""
}
