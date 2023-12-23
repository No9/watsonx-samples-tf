# watsonx-samples-tf
[OpenTofu](https://opentofu.org/docs/intro/install/) scripts to provision watsonx samples on IBM Cloud.

The complete list of samples is available [here](https://dataplatform.cloud.ibm.com/docs/content/wsj/analyze-data/fm-rag.html?context=wx) and this repo will be updated as I work with partners to build out watsonx solutions. 

|Name|Scripts|Details|
|---|---|---|
|[Introduction to retrieval-augmented generation](https://dataplatform.cloud.ibm.com/exchange/public/entry/view/fed7cf6b-1c48-4d71-8c04-0fce0e000d43?context=wx)|[simple_rag](./simple_rag)|Uses a small knowledge base and a simple search component to demonstrate the basic pattern.|
|[LangChain and an Elasticsearch vector database](https://dataplatform.cloud.ibm.com/exchange/public/entry/view/ebeb9fc0-9844-4838-aff8-1fa1997d0c13?context=wx&audience=wdp)|[elastic-langchain-rag](./elastic-langchain-rag)|Demonstrates how to use LangChain to apply an embedding model to documents in an Elasticsearch vector database. The notebook then indexes and uses the data store to generate answers to incoming questions.|
|[Use watsonx, and Elasticsearch Python SDK to answer questions RAG](https://dataplatform.cloud.ibm.com/exchange/public/entry/view/bdbc8ad4-9c1f-460f-99ee-5c3a1f374fa7?context=wx&audience=wdp)|[elastic-python-rag](./elastic-python-rag/)|Demonstrates how to use the Elasticsearch Python SDK to apply an embedding model to documents in an Elasticsearch vector database. The notebook then indexes and uses the data store to generate answers to incoming questions.|

## Deploy

### schematics
To run the samples you can execute them in a [schematics workspace](https://cloud.ibm.com/docs/schematics?topic=schematics-getting-started) 

### desktop 

1. Set the by setting the `TF_VAR_ibmcloud_api_key` environment variable to an API key obtained from [IAM](https://cloud.ibm.com/iam/apikeys)
   ```
   export TF_VAR_ibmcloud_api_key
   ```

2. changing directory to the sample you wish to provision and running `tofu init` then `tofu apply`