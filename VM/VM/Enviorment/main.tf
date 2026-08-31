

module "rk" {
  source = "../Child Module/RG"
  rgkv   = var.rgkv
}

module "vk" {
  depends_on = [module.rk]
  source     = "../Child Module/Vnet"
  vnetk      = var.vnetk
}

module "snk" {
  depends_on = [module.vk]
  source     = "../Child Module/subnet"
  snetk      = var.snetk
}
module "pip_module" {
  depends_on = [module.rk]
  source     = "../Child Module/Public_Ip"
  pipk       = var.pipk

}

module "vm_module" {
  depends_on = [module.snk, module.pip_module]
  source     = "../Child Module/VM"
  vms        = var.vms

}





  