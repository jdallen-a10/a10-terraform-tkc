#
#  vThunder configs for TKC demo
#
#  John D. Allen
#  Global Solutions Architect - Cloud, IOT, & Automation
#  A10 Networks, Inc.
#  Apache v2.0 License applies.
#  June, 2021
#

provider "thunder" {
  address = var.thunder_ip_address
  username = var.thunder_username
  password = var.thunder_password
}

resource "thunder_virtual_server" "ws-vip" {
  name = "ws-vip"
  ip_address = var.thunder_vip
  template_virtual_server = "bw-control"
  port_list {
    port_number = 80
    protocol = "http"
    aflex_scripts {
        aflex = "http-error-status-log"
    }
  }
}
