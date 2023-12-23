resource "ibm_database" "es_instance" {
  resource_group_id            = ibm_resource_group.rag_rg.id
  name                         = "${var.prefix}-es"
  service                      = "databases-for-elasticsearch"
  plan                         = "enterprise"
  location                     = "${var.region}"
  adminpassword                = "${var.elasticsearch_adminpwd}"
  version                      = "8.10"
  group {
    group_id = "member"
    members {
      allocation_count = 3
    }
    memory {
      allocation_mb = 1024
    }
    disk {
      allocation_mb = 5120
    }
    cpu {
      allocation_count = 3
    }
  }

  timeouts {
    create = "120m"
    update = "120m"
    delete = "15m"
  }
  tags = var.tags
}

resource "ibm_resource_instance" "wml_instance" {
    name              = "${var.prefix}-wml"
    service           = "pm-20"
    plan              = "lite"
    location          = "${var.region}"
    resource_group_id = ibm_resource_group.rag_rg.id
    tags = var.tags
  }

resource ibm_resource_instance studio_instance {
  name              = "${var.prefix}-studio"
  service           = "data-science-experience"
  plan              = "professional-v1"
  location          = "${var.region}"
  resource_group_id = ibm_resource_group.rag_rg.id
  tags              = var.tags

  timeouts {
    create = "15m"
    update = "15m"
    delete = "15m"
  }
}

resource "ibm_resource_instance" "object_storage_instance" {
  name              = "${var.prefix}-object-storage"
  resource_group_id = ibm_resource_group.rag_rg.id
  service           = "cloud-object-storage"
  location          = "global"
  plan              = "standard"
  tags = var.tags
}

