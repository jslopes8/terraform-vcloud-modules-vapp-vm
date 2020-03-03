output "vm_name" {
  value = vcd_vapp_vm.vapp_vm.*.name
}
output "vm_ip" {
  value = vcd_vapp_vm.vapp_vm.*.network
}
