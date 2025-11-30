output "default_network_subnet" {
  description = "Subnet of the Default LAN network"
  value       = unifi_network.default.subnet
}

output "iot_network_subnet" {
  description = "Subnet of the IOT network"
  value       = unifi_network.iot.subnet
}

output "wlan_main_id" {
  description = "ID of the main WLAN"
  value       = unifi_wlan.main.id
}

output "wlan_main_ssid" {
  description = "SSID name of the main WLAN"
  value       = unifi_wlan.main.name
}
