provider "metal" {}

terraform {
  backend "s3" {
    bucket = "grahamc-nixops-state"
    key    = "packet-nix-builder/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "tags" {
  type    = list(string)
  default = ["terraform-packet-nix-builder"]
}

variable "project_id" {
  default = "86d5d066-b891-4608-af55-a481aa2c0094"
}

variable "reservations" {
  type = map(object({ # reservation ID is the key
    facility = string
    class    = string
  }))
  default = {
    "d5c94563-eede-445c-8a33-89853e0a4afd" : {
      "facility" : "e1e9c52e-a0bc-4117-b996-0fc94843ea09",
      "class" : "baremetal_2a5"
    },
    "106657f6-95f2-4447-96d1-1e28f9c688a5" : {
      "facility" : "c9dcbd06-6797-4096-b648-1be16dd5d833",
      "class" : "baremetal_2a5"
    },
    "7c69b66d-f64c-499b-a495-907133176fbe" : {
      "facility" : "c9dcbd06-6797-4096-b648-1be16dd5d833",
      "class" : "baremetal_2a5"
    },
    "97dae8ff-06af-4416-9f27-8bcdbdc4e992" : {
      "facility" : "c9dcbd06-6797-4096-b648-1be16dd5d833",
      "class" : "baremetal_2a5"
    },
    "6bf9dd7f-2129-46a9-ae35-b54d6dbd63a1" : {
      "facility" : "d0c0d80d-4637-4fa0-b79e-803fc42b19bd",
      "class" : "baremetal_2a5"
    },
    "0a768cab-6e80-4012-ac79-91555ee9bad4" : {
      "facility" : "e1e9c52e-a0bc-4117-b996-0fc94843ea09",
      "class" : "baremetal_2a5"
    },
    "86a5c1f1-453a-4719-bd93-8427272c4073" : {
      "facility" : "c9dcbd06-6797-4096-b648-1be16dd5d833",
      "class" : "baremetal_2a5"
    },
    "13fea8e9-9184-42fb-b464-f8951897ff68" : {
      "facility" : "c9dcbd06-6797-4096-b648-1be16dd5d833",
      "class" : "baremetal_2a5"
    },
    "68ead1e9-a310-4744-b90b-d06d5d31afc3" : {
      "facility" : "e1e9c52e-a0bc-4117-b996-0fc94843ea09",
      "class" : "baremetal_2a5"
    },
    "e8977920-13c6-484d-b4f4-92426583cad0" : {
      "facility" : "c9dcbd06-6797-4096-b648-1be16dd5d833",
      "class" : "baremetal_2a5"
    },
    "de28365b-1bcd-492b-9f91-f775327f7425" : {
      "facility" : "c9dcbd06-6797-4096-b648-1be16dd5d833",
      "class" : "baremetal_2a5"
    },
    "6b25844f-aaa8-4e50-94a3-6b175077b90c" : {
      "facility" : "e1e9c52e-a0bc-4117-b996-0fc94843ea09",
      "class" : "baremetal_2a5"
    },
    "533a5afa-a56e-4766-ab7e-fdc236d24449" : {
      "facility" : "c9dcbd06-6797-4096-b648-1be16dd5d833",
      "class" : "baremetal_2a5"
    },
    "3f4138c8-828d-46fb-84bf-762810092697" : {
      "facility" : "e1e9c52e-a0bc-4117-b996-0fc94843ea09",
      "class" : "c2.large.arm"
    },
    "aa3fee8e-3cdf-4562-af26-c36cff180827" : {
      "facility" : "c9dcbd06-6797-4096-b648-1be16dd5d833",
      "class" : "baremetal_2a5"
    },
    "0f22764a-707d-4279-acfe-862bd6f2607d" : {
      "facility" : "c9dcbd06-6797-4096-b648-1be16dd5d833",
      "class" : "baremetal_2a5"
    },
    "6f21cbbd-35d9-4426-895b-8c8e218e339a" : {
      "facility" : "c9dcbd06-6797-4096-b648-1be16dd5d833",
      "class" : "baremetal_2a5"
    },
    "fbbc4c82-dad8-4ff0-a5e4-f028910ac2ce" : {
      "facility" : "c9dcbd06-6797-4096-b648-1be16dd5d833",
      "class" : "baremetal_2a5"
    },
    "89873ca4-8345-4529-9762-669df5fb175e" : {
      "facility" : "c9dcbd06-6797-4096-b648-1be16dd5d833",
      "class" : "baremetal_2a5"
    },
    "43e2dbd2-451e-485e-bd98-206d44af4b8c" : {
      "facility" : "c9dcbd06-6797-4096-b648-1be16dd5d833",
      "class" : "baremetal_2a5"
    },
    "218a7f82-24e8-4b00-8891-a32510b0d32b" : {
      "facility" : "c9dcbd06-6797-4096-b648-1be16dd5d833",
      "class" : "baremetal_2a5"
    }
  }
}

variable "reservation_class_urls" {
  type = map(string)
  default = {
    "baremetal_2a5" = "https://netboot.gsc.io/hydra-aarch64-linux/netboot.ipxe"
    "c2.large.arm"  = "https://netboot.gsc.io/hydra-aarch64-linux/netboot.ipxe"
  }
}

variable "reservation_facility_names" {
  type = map(string)
  default = {
    "c9dcbd06-6797-4096-b648-1be16dd5d833" = "dfw2",
    "e1e9c52e-a0bc-4117-b996-0fc94843ea09" = "ewr1",
    "d0c0d80d-4637-4fa0-b79e-803fc42b19bd" = "mrs1"
  }
}

# Reservations where the underlying hardware is probably broken
variable "reservation_broken" {
  type = list(string)
  default = [
    "aa3fee8e-3cdf-4562-af26-c36cff180827",
    "d5c94563-eede-445c-8a33-89853e0a4afd",
  ]
}

variable "reservation_class_names" {
  type = map(string)
  default = {
    "baremetal_2a5" = "baremetal-2a5" # _'s not allowed in hostnames
  }
}

variable "bids" {
  type = list(object({
    price = number
    plan  = string
    name  = string # leave as an empty string to use the plan
    url   = string
  }))
  default = [
    {
      price = 2
      plan  = "c1.large.arm"
      name  = ""
      url   = "https://netboot.gsc.io/hydra-aarch64-linux/netboot.ipxe"
    },
    {
      price = 1.99
      plan  = "c2.large.arm"
      name  = "c2.large.arm--big-parallel"
      url   = "https://netboot.gsc.io/hydra-aarch64-linux/netboot.ipxe"
    },
    {
      price = 1.98
      plan  = "c2.large.arm"
      name  = ""
      url   = "https://netboot.gsc.io/hydra-aarch64-linux/netboot.ipxe"
    },
    {
      price = 1.97
      plan  = "c2.large.arm"
      name  = ""
      url   = "https://netboot.gsc.io/hydra-aarch64-linux/netboot.ipxe"
    },
    {
      price = 1.96
      plan  = "c2.large.arm"
      name  = "c2.large.arm--armv7l"
      url   = "https://netboot.gsc.io/hydra-aarch64-linux/netboot.ipxe"
    },

    {
      price = 2.0
      plan  = "m1.xlarge.x86"
      name  = "m1.xlarge.x86-big--parallel"
      url   = "https://netboot.gsc.io/hydra-x86_64-linux/netboot.ipxe"
    },
    {
      price = 1.99
      plan  = "m1.xlarge.x86"
      name  = "m1.xlarge.x86-big--parallel"
      url   = "https://netboot.gsc.io/hydra-x86_64-linux/netboot.ipxe"
    },
    {
      price = 1.98
      plan  = "m1.xlarge.x86"
      name  = ""
      url   = "https://netboot.gsc.io/hydra-x86_64-linux/netboot.ipxe"
    },
    {
      price = 1.97
      plan  = "m1.xlarge.x86"
      name  = ""
      url   = "https://netboot.gsc.io/hydra-x86_64-linux/netboot.ipxe"
    },
    {
      price = 1.96
      plan  = "m1.xlarge.x86"
      name  = ""
      url   = "https://netboot.gsc.io/hydra-x86_64-linux/netboot.ipxe"
    },
    {
      price = 1.95
      plan  = "m1.xlarge.x86"
      name  = ""
      url   = "https://netboot.gsc.io/hydra-x86_64-linux/netboot.ipxe"
    },
    {
      price = 1.94
      plan  = "m1.xlarge.x86"
      name  = ""
      url   = "https://netboot.gsc.io/hydra-x86_64-linux/netboot.ipxe"
    },
  ]
}

locals {
  named_bids = { for bid in var.bids : "${bid.plan}--${bid.name}--${bid.price}" => bid }
}

resource "metal_spot_market_request" "request" {
  for_each      = local.named_bids
  project_id    = var.project_id
  max_bid_price = each.value.price
  facilities    = ["ams1", "sjc1", "dfw2", "nrt1", "ewr1"]
  devices_min   = 1
  devices_max   = 1

  instance_parameters {
    hostname         = each.value.name == "" ? each.value.plan : each.value.name
    billing_cycle    = "hourly"
    operating_system = "custom_ipxe"
    always_pxe       = true
    plan             = each.value.plan
    ipxe_script_url  = each.value.url
    project_ssh_keys = []
    user_ssh_keys    = []
    tags             = concat(var.tags, ["hydra"])
  }
}


resource "metal_device" "reservation" {
  for_each                = { for id, value in var.reservations : id => value if ! contains(var.reservation_broken, id) }
  project_id              = var.project_id
  hostname                = lookup(var.reservation_class_names, each.value.class, each.value.class)
  billing_cycle           = "hourly"
  operating_system        = "custom_ipxe"
  always_pxe              = true
  plan                    = each.value.class
  facilities              = [var.reservation_facility_names[each.value.facility]]
  hardware_reservation_id = each.key

  ipxe_script_url                  = var.reservation_class_urls[each.value.class]
  project_ssh_key_ids              = []
  tags                             = concat(var.tags, ["hydra"])
  wait_for_reservation_deprovision = true

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}

resource "metal_device" "sphalerite" {
  project_id       = var.project_id
  hostname         = "sphalerite"
  billing_cycle    = "hourly"
  operating_system = "custom_ipxe"
  always_pxe       = true
  plan             = "c1.large.arm"
  facilities       = ["ewr1"]

  ipxe_script_url     = "http://netboot.linuxhacker.men/boot.ipxe"
  project_ssh_key_ids = ["1b6fc7a7-eeaf-4880-bba4-f5ac4b22856f"] # sphalerite's key
  tags                = concat(var.tags, ["sphalerite", "skip-hydra"])
}

