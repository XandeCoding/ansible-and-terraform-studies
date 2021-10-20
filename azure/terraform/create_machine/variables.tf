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

# Others
variable "location" {
  default = "brazilsouth"
}