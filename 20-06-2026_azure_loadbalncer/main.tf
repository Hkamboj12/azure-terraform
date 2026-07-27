module "rg" {
  source     = "git::https://github.com/Hkamboj12/azure-terraform.git//terraform_modules_09june26/modules/resource_group?ref=terraform"
  rg_details = var.rg_details
}

module "vnet" {
  depends_on   = [module.rg]
  source       = "git::https://github.com/Hkamboj12/azure-terraform.git//terraform_modules_09june26/modules/vnet?ref=terraform"
  vnet_details = var.vnet_details
}