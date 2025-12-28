variable "mgc_api_key" {
  description = "The key from mgc api"
  type        = string
  sensitive   = true
}

variable "mgc_ssh_key" {
  description = "SSH key from mgc"
  type        = string
  sensitive   = true
}
