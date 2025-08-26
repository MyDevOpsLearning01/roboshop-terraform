# instances = {
#   frontend = {
#     instance_type  = "t3.small"
#     disk_size = 30
#   }
#   mongodb  = {
#     instance_type  = "t3.small"
#     disk_size = 20
#   }
#   redis    = {
#     instance_type  = "t3.small"
#     disk_size = 20
#   }
#   rabbitmq = {
#     instance_type  = "t3.small"
#     disk_size = 20
#   }
#   mysql = {
#     instance_type  = "t3.small"
#     disk_size = 20
#   }
#   cart = {
#     instance_type  = "t3.small"
#     disk_size = 30
#   }
#   catalogue = {
#     instance_type  = "t3.small"
#     disk_size = 30
#   }
#   user = {
#     instance_type  = "t3.small"
#     disk_size = 30
#   }
#   payment = {
#     instance_type  = "t3.small"
#     disk_size = 30
#   }
#   shipping = {
#     instance_type  = "t3.small"
#     disk_size = 30
#   }
# }

databases = {
  mysql = {
    instance_type = "t3.small"
    disk_size     = 20
  }
  mongodb = {
    instance_type = "t3.small"
    disk_size     = 20
  }
  redis = {
    instance_type = "t3.small"
    disk_size     = 20
  }
  rabbitmq = {
    instance_type = "t3.small"
    disk_size     = 20
  }
}


env       = "dev"
ami       = "ami-0e9a04cdbe288de5e"
zone_id   = "Z02026291HPVCMZDCBMXX"
zone_name = "maidevops.fun"

eks = {
  main = {
    eks_version = 1.33
    subnet_ids  = ["subnet-0d6e5bfe1bc583e43", "subnet-023f4d7f92ea32b25"]
    node_groups = {
      one = {
        min_nodes = 1
        max_nodes = 10
      }
    }
    access = {
      workstation = {
        principal_arn = "arn:aws:iam::804756348441:role/workstation-role"
      }
    }
  }
}