variable "unifi_api_key" {
  description = "API key for UniFi Controller authentication"
  type        = string
  sensitive   = true
}

variable "unifi_api_url" {
  description = "Base URL for UniFi Controller API (e.g., https://unifi.example.com or https://192.168.1.1)"
  default = "https://192.168.1.1"
  type        = string
}


variable "unifi_site" {
  description = "Site name in UniFi Controller (usually 'default' for single-site deployments)"
  type        = string
  default     = "default"
}

variable "unifi_allow_insecure" {
  description = "Allow insecure HTTPS connections (useful for self-signed certificates)"
  type        = bool
  default     = true
}

variable "lan_network_name" {
  description = "Name of the LAN network to query (check UniFi Controller > Settings > Networks & Internet > Networks for available network names)"
  type        = string
  default     = "Default"
}

variable "wifi_ssid" {
  description = "SSID name for the WiFi network"
  type        = string
}

variable "wifi_passphrase" {
  description = "Passphrase for the WiFi network"
  type        = string
  sensitive   = true
}

