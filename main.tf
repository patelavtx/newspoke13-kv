
# AZURE spoke - dev 

# https://registry.terraform.io/modules/terraform-aviatrix-modules/mc-overlap-nat-spoke/aviatrix/latest
# https://registry.terraform.io/modules/terraform-aviatrix-modules/mc-spoke/aviatrix/latest
/*
module "spoke_azure_1" {
  source         = "terraform-aviatrix-modules/mc-spoke/aviatrix"
  version        = "1.6.3"
  cloud          = "Azure" 
  transit_gw     = var.transit_gw
  attached       = var.attached
  cidr           = var.cidr
  region         = var.region
  ha_gw          = var.ha_gw
  account        = var.account
  insane_mode    = "false"
  #enable_bgp     = "true"
  #local_as_number = "65013"
  #  name of existing RG
  resource_group = "atulrg-spoke13"
  name = var.name
  subnet_pairs = "2"
  #tags = var.tags
}

*/

/*
# Add delay to allow spoke-transit tunnels to come up before deploying custom nat
resource "time_sleep" "wait_90_seconds" {
    create_duration = "90s"
    depends_on = [module.spoke_azure_1]
}


#   If NAT is needed ; note that the module varialbes.tf needs addressing when single spoke gw ; see bottom of this page.
module "spoke1_nat" {
  source          = "terraform-aviatrix-modules/mc-overlap-nat-spoke/aviatrix"
  version         = "1.0.4"
  count           = var.nat_attached ? 1 : 0
  #ha_gw           = var.ha-gw
  spoke_gw_object = module.spoke_azure_1.spoke_gateway
  spoke_cidrs     = var.spoke_cidrs
  transit_gw_name = var.transit_gw
  gw1_snat_addr   = var.gw1_snat
  gw2_snat_addr   = var.gw2_snat
  dnat_rules = {
    rule1 = {
      dst_cidr  = var.dstcidr,
      dst_port  = "80",
      protocol  = "tcp",
      dnat_ips  = var.dnatip,
      dnat_port = "80",
    },
    rule2 = {
      dst_cidr  = var.dstcidr,
      dst_port  = "8443",
      protocol  = "tcp",
      dnat_ips  = var.dnatip,
      dnat_port = "443",
    },
    rule3 = {
      dst_cidr  = var.dstcidr2,
      dst_port  = "80",
      protocol  = "tcp",
      dnat_ips  = var.dnatip2,
      dnat_port = "80",
    },
    rule4 = {
      dst_cidr  = var.dstcidr2,
      dst_port  = "2222",
      protocol  = "tcp",
      dnat_ips  = var.dnatip2,
      dnat_port = "22",
    },
  }
depends_on = [time_sleep.wait_90_seconds]
}
*/
