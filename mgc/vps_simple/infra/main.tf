terraform {
  required_providers {
    mgc = {
      source  = "magalucloud/mgc"
      version = "0.41.1"
    }
  }
}

provider "mgc" {
  alias   = "sudeste"
  region  = "br-se1"
  api_key = var.mgc_api_key
}

resource "mgc_ssh_keys" "mgc_personal_ssh_key" {
  name = "mgc_personal_ssh_key"
  key  = var.mgc_ssh_key
}

resource "mgc_virtual_machine_instances" "mgc_simple_vm" {
  name                 = "mgc_simple_vm"
  machine_type         = "BV1-1-10"
  image                = "cloud-ubuntu-24.04 LTS"
  ssh_key_name         = "mgc_personal_ssh_key"
  allocate_public_ipv4 = true
}

output "vm_private_ip" {
  value = mgc_virtual_machine_instances.mgc_simple_vm.local_ipv4
}

output "vm_public_ip" {
  value = mgc_virtual_machine_instances.mgc_simple_vm.ipv4
}

output "vm_ipv6" {
  value = mgc_virtual_machine_instances.mgc_simple_vm.ipv6
}
