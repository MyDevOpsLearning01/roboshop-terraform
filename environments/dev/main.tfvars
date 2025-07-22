instances = {
  frontend = {
    instance_type  = "t3.small"
    disk_size = 30
  }
  mongodb  = {
    instance_type  = "t3.small"
    disk_size = 20
  }
  redis    = {
    instance_type  = "t3.small"
    disk_size = 20
  }
  rabbitmq = {
    instance_type  = "t3.small"
    disk_size = 20
  }
  mysql = {
    instance_type  = "t3.small"
    disk_size = 20
  }
  cart = {
    instance_type  = "t3.small"
    disk_size = 30
  }
  catalogue = {
    instance_type  = "t3.small"
    disk_size = 30
  }
  user = {
    instance_type  = "t3.small"
    disk_size = 30
  }
  payment = {
    instance_type  = "t3.small"
    disk_size = 30
  }
  shipping = {
    instance_type  = "t3.small"
    disk_size = 30
  }
}

env       = "dev"
ami       = "ami-0e9a04cdbe288de5e"
zone_id   = "Z02026291HPVCMZDCBMXX"
zone_name = "maidevops.fun"