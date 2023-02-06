variable "sample" {
  default = 10
}
output "demo" {
  value=var.sample
}

variable "sample1" {
  default = "dimmi"
}
output "demo1" {
  value=var.sample1
}

variable "sample2" {
  default = true
}

output "demo2" {
  value=var.sample2
}

