
### Creating and Index


https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html

The example below shows how to create an index if the ElasticSearch instance is running locally.

```shell

curl -X PUT "http://localhost:9200/ecommerce?pretty" -H 'Content-Type: application/json' -d'
{
  "settings": {
    "index": {
      "number_of_shards": 1,  
      "number_of_replicas": 1 
    }
  }
}
'

```
