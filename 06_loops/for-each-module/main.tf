variable "components" {
  default = {
    cart = {
      name="cart"
      instance_type="t3.small"
    }
    catalogue = {
      name="catalogue"
      instance_type="t3.micro"
    }
  }
}

#output "publicip" {
#  value = {
#    for k, v in module.demo : k => v["ec2"].public_ip
#  }
#}

output "publicip" {
  value = module.demo
}

module "demo" {
  source = "./module"
  for_each = var.components
  instance_type = each.value.instance_type
  name=each.value.name
}