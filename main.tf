## Create VM Instance without disks
resource "vcd_vapp_vm" "vapp_vm" {
    count   = var.instance_count

    vapp_name       = var.vapp_name
    name            = var.instance_count > 1 || var.use_num_suffix ? format("%s-%d", var.name, count.index + 1) : var.name
    computer_name   = var.instance_count > 1 || var.use_num_suffix ? format("%s-%d", var.name, count.index + 1) : var.name
    catalog_name    = var.catalog_name
    template_name   = var.template_name
    memory          = var.memory
    cpus            = var.cpus
    cpu_cores       = var.cpu_cores 
    initscript      = var.initscript

    dynamic "network" {
        for_each = var.network
        content {
            type                = network.value.type
            name                = lookup(network.value, "name", "null")
            is_primary          = lookup(network.value, "is_primary", "false")
            ip_allocation_mode  = network.value.ip_allocation_mode
        }
    }

    depends_on = [ var.depends ]
    metadata        = var.default_metadata
}