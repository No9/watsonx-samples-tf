
resource "ibm_resource_instance" "wml" {
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
