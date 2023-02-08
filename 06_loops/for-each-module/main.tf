variable "demo" {
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

module "demo" {
  source = "./module"
  for_each = var.demo
  instance_type = each.value.instance_type
  name=each.value.name
}