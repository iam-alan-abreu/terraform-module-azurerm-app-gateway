locals {

  frontend_port_name             = "appgw-${var.app_gateway_name}-${local.location}-feport"
  frontend_ip_configuration_name = "appgw-${var.app_gateway_name}-${local.location}-feip"
  gateway_ip_configuration_name  = "appgw-${var.app_gateway_name}-${local.location}-gwipc"

  # Naming locals/constants
  name        = lower(var.name)
  zone        = lower(var.landingzone)
  product     = lower(var.product)
  sub_product = var.sub_product != "" ? lower("-${var.sub_product}") : ""
  environment = lower(var.environment)
  location    = lower(var.location)
  suffix      = var.use_suffix == true ? "-${var.suffix}" : ""

  suffix_name = "${local.location}-${local.zone}-${local.product}${local.sub_product}-${local.name}-${local.environment}${local.suffix}"

  tags = {
    landingzone = local.zone
    product     = local.product
    environment = local.environment
    region      = local.location
  }
}