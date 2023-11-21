data "alicloud_zones" "default" {
  available_resource_creation = "VSwitch"
}

data "alicloud_resource_manager_resource_groups" "default" {
  status = "OK"
}

resource "alicloud_vpc" "vpc" {
  vpc_name   = var.name
  cidr_block = var.cidr_block
}


variable "name" {
  default = "networkInterfaceName"
}

variable "cidr_block" {
  type = string
  default = "192.168.0.0/24"
}
