#variable "sample" {
#  default = 10
#}
#output "demo" {
#  value=var.sample
#}
#
#variable "sample1" {
#  default = "dimmi"
#}
#output "demo1" {
#  value=var.sample1
#}
#
#variable "sample2" {
#  default = true
#}
#
#output "demo2" {
#  value=var.sample2
#}

#default variable type
variable "sam" {
  default =10
}

output "dem" {
  value=var.sam
}

#list variable type

variable "sam1" {
  default=[
    10,
    "sunnu",
    100,
    "pandu"
    ]
}

output "dem1" {
  value=var.sam1[1]
}

#map variable type

variable "sam2" {
  default={
    name="dimpul",
    num=10
  }
}

output "dem2" {
  value=var.sam2["num"]
}

#variable from tfvars

variable "dimpul" {}

