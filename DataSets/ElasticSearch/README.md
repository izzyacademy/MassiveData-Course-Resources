
### Creating and Index


https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html

The example below shows how to create an index if the ElasticSearch instance is running locally.

```shell

curl -X PUT "http://localhost:9200/products?pretty" -H 'Content-Type: application/json' -d'
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


### Creating a Mapping

- [Data Types](https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping-types.html)
- [Create Mapping Syntax](https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping.html)
- [Changes to Type Management in ElasticSearch 7.0 or later](https://www.elastic.co/guide/en/elasticsearch/reference/current/removal-of-types.html)
- [Synonyms](https://www.elastic.co/guide/en/elasticsearch/reference/current/analysis-synonym-tokenfilter.html)

```shell
curl -X PUT "http://localhost:9200/products/_mapping?pretty" -H 'Content-Type: application/json' -d'
{
  "properties": {
    "product_id": {
      "type": "integer"
    },
    "name": {
      "type": "keyword"
    },
    "long_description": {
      "type": "text",
      "index": true
    },
    "department_search": {
      "type": "text",
      "index": true
    },
    "department": {
      "type": "keyword",
      "index": false
    },
  }
}
'

```
