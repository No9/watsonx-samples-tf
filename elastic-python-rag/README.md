# Use watsonx, and Elasticsearch Python SDK to answer questions (RAG)

This sample provisions the environment required to execute a the RAG sample [available here](
https://dataplatform.cloud.ibm.com/exchange/public/entry/view/bdbc8ad4-9c1f-460f-99ee-5c3a1f374fa7?context=wx&audience=wdp)

## notes

* Before you can use the notebook you will need to create a project in watson studio and associate the object storage instance with it.

* By default this project uses the `eu-de` region. You will need to update the watsonx API connection in the notebook to `https://eu-de.ml.cloud.ibm.com`
   ![connection url](./images/url.png)

* You will need to create service credentials for the elastic search service to be used in the note book
   ![Service Credentials](./images/credentials.png)

