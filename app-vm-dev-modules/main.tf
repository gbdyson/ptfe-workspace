# Provider Credentials can be loaded via
# export VSPHERE_SERVER=""
# export VSPHERE_USER=""
# export VSPHERE_PASSWORD=""
provider "vsphere" {
  allow_unverified_ssl = true
}

locals {
  datacenter_name      = "Datacenter"
  cluster_name         = "East"
  datastore_name       = "370SSDDatastore1"
  network_name         = "VM Network"
  virtual_machine_name = "GBD-TEST-VM01"
}

module "vm" {
  source  = "https://tfe-nfcu.digitalinnovation.dev/app/gdyson-org/vm/vsphere"
  version = "0.0.1"

  datacenter_name      = local.datacenter_name
  cluster_name         = local.cluster_name
  datastore_name       = local.datastore_name
  network_name         = local.network_name
  virtual_machine_name = local.virtual_machine_name
}
