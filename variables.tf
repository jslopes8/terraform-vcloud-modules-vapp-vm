variable "create" {
  type    = bool
  default = "true"
}
variable "instance_count" {
  type    = number
  default = "1"
}
variable "name" {
    type = string
}
variable "vapp_name" {
  type = string
}
variable "catalog_name" {
    type = string
}
variable "template_name" {
  type = string
}
variable "memory" {
  type = number
  default = "2048"
}
variable "cpus" {
  type = number
  default = "2"
}
variable "cpu_cores" {
  type = number
  default = "1"
}
variable "default_metadata" {
  type    = map(string)
  default = {}
}
variable "network" {
  type  = list(map(string))
}
variable "depends" {
  type    = list(string)
  default = []
}
variable "use_num_suffix" {
  type    = bool
  default = false
}
variable "initscript" {
  type    = string
  default = ""  
}