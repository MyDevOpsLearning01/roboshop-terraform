variable "zone_id" {
  default = "Z02026291HPVCMZDCBMXX"
}

variable "ami" {
  default = "ami-09c813fb71547fc4f"
}

variable "tools" {
  default = {
    vault = {
      instance_type = "t3.small"
    }
    github-runner = {
      instance_type = "t3.small"
      iam_policy    = ["*"]
    }
  }
}

variable "token" {}