resource "ibm_resource_group" "rag_rg" {
  name = "${var.prefix}-watsonx-simple-rag-rg"
  tags = var.tags
}
