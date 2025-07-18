module "tools" {
  for_each = var.tools
  source = "../modules/ec2"
  ami           = var.ami
  instance_type = each.value["t3.small"]
  name          = each.key
  zone_id       = ""
}
