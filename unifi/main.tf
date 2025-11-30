provider "unifi" {
  api_key        = var.unifi_api_key
  api_url        = var.unifi_api_url
  site           = var.unifi_site
  allow_insecure = var.unifi_allow_insecure
}

# Networks imported from UniFi Controller API
# These resources represent the current network configuration

# Default LAN Network (Corporate)
resource "unifi_network" "default" {
  name    = "Default"
  purpose = "corporate"

  subnet       = "192.168.1.1/24"
  dhcp_enabled = true
  dhcp_start   = "192.168.1.6"
  dhcp_stop    = "192.168.1.254"
  dhcp_lease   = 86400

  domain_name   = "localdomain"
  igmp_snooping = false
  multicast_dns = true

  enabled                      = true
  intra_network_access_enabled = true
  ipv6_ra_valid_lifetime       = 86400

  # Ignore IPv6 attributes that aren't supported by the provider
  lifecycle {
    ignore_changes = [
      dhcp_v6_start,
      dhcp_v6_stop,
      ipv6_pd_start,
      ipv6_pd_stop,
      ipv6_ra_priority,
    ]
  }
}

# IOT Network (Corporate with VLAN)
resource "unifi_network" "iot" {
  name    = "IOT"
  purpose = "corporate"

  subnet       = "192.168.4.1/24"
  vlan_id      = 2
  dhcp_enabled = true
  dhcp_start   = "192.168.4.6"
  dhcp_stop    = "192.168.4.254"
  dhcp_lease   = 86400

  igmp_snooping = false
  multicast_dns = true

  intra_network_access_enabled = true
  ipv6_ra_valid_lifetime       = 86400

  # Ignore IPv6 attributes that aren't supported by the provider
  lifecycle {
    ignore_changes = [
      dhcp_v6_start,
      dhcp_v6_stop,
      ipv6_pd_start,
      ipv6_pd_stop,
      ipv6_ra_priority,
    ]
  }
}

# WireGuard VPN Network (Remote User VPN)
# Note: VPN networks with purpose "remote-user-vpn" are not supported by the Terraform provider
# VPN networks must be managed manually through the UniFi Controller UI
# This network exists in your controller but cannot be managed via Terraform
# Network: "Dream Machine Special Edition" - 192.168.8.1/24

# WLAN (Wireless Networks)

# Main WiFi Network
resource "unifi_wlan" "main" {
  name         = var.wifi_ssid
  security     = "wpapsk"
  passphrase   = var.wifi_passphrase
  user_group_id = "66f9c41dcbf3c15c45d0dee9"  # Default user group

  network_id = unifi_network.default.id

  # WPA settings
  wpa3_support    = true
  wpa3_transition = true
  pmf_mode        = "optional"

  # Radio bands
  wlan_band = "both"  # supports 2g, 5g, and 6g

  # SSID settings
  hide_ssid = false

  # Advanced settings
  fast_roaming_enabled = true
  is_guest             = false

  # AP Group configuration
  ap_group_ids = ["66f9c41dcbf3c15c45d0deee"]
}

