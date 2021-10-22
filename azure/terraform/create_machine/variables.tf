# Resource names
variable "resource_group_name" {
  default = "game_resource_group"
}

variable "virtual_network_name" {
  default = "game_virtual_network"
}

variable "subnet_name" {
  default = "game_subnet"
}

variable "public_ip_name" {
  default = "game_public_ip"
}

variable "security_group_name" {
  default = "game_security_group"
}

variable "network_interface_name" {
  default = "game_network_interface"
}

variable "network_interface_configuration_name" {
  default = "game_network_interface_configuration"
}

variable "virtual_machine_name" {
  default = "game_virtual_machine"
}

variable "os_disk_name" {
  default = "game_os_disk"
}

variable "computer_name" {
  # TODO: ADD VALIDATION TO NOT SUPPORT `\/"[]:|<>+=;,?*@&~!#$%^()_{}'`
  default = "game"
}

variable "admin_username" {
  default = "game_admin"
}

# Others
variable "location" {
  default = "brazilsouth"
}

variable "tag_environment" {
  default = "Terraform game server"
}