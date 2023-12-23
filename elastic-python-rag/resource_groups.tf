resource "ibm_resource_group" "rag_rg" {
  name = "${var.prefix}-watsonx-es-langchain-rag-rg"
  tags = var.tags
}
