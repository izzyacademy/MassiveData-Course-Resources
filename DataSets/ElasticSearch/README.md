
### Retrieving the Username & Password for Authentication

https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-deploy-elasticsearch.html#k8s_request_elasticsearch_access

We can use any of the following commands to retrieve the password for the elastic user

This will be used to authenticate against the elasticsearch and kibana installations

```shell 

kubectl get secret quickstart-es-elastic-user -o go-template='{{.data.elastic | base64decode}}'
 
kubectl get secret quickstart-es-elastic-user -o=jsonpath='{.data.elastic}' | base64 --decode; echo

# You can set the password as an environment variable, as follows
export PASSWORD=$(kubectl get secret quickstart-es-elastic-user -o go-template='{{.data.elastic | base64decode}}')


# Test it out to validate we have the correct credentials
curl -k -u "elastic:$PASSWORD" "https://{external-ip-address-goes-here}:9200"

```


### Creating and Index with Settings and a Mapping

- [Data Types](https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping-types.html)
- [Create Mapping Syntax](https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping.html)
- [Changes to Type Management in ElasticSearch 7.0 or later](https://www.elastic.co/guide/en/elasticsearch/reference/current/removal-of-types.html)
- [Synonyms](https://www.elastic.co/guide/en/elasticsearch/reference/current/analysis-synonym-tokenfilter.html)
- [Analyzers for Indexing and Query Time](https://www.elastic.co/guide/en/elasticsearch/reference/7.3/analyzer.html)
- https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html

The example below shows how to create an index if the ElasticSearch instance is running locally.

```shell
curl -k -u "elastic:$PASSWORD" -X PUT "https://13.88.141.162:9200/products?pretty" -H 'Content-Type: application/json' -d'
{
  "settings": {
    "index": {
      "number_of_shards": 1,
      "number_of_replicas": 1,
      "analysis": {
        "analyzer": {
          "synonym": {
            "tokenizer": "standard",
            "filter": [
              "stop",
              "synonym"
            ]
          }
        },
        "filter": {
          "izzystop": {
            "type": "stop",
            "stopwords": [
              "the",
              "is"
            ]
          },
          "synonym": {
            "type": "synonym",
            "lenient": true,
            "expand": true,
            "synonyms": [
              "lift => elevator",
              "speed, velocity",
              "cookies, buscuit",
              "holiday, vacation",
              "xmas, christmas",
              "soda, pop, soft drink"
            ]
          }
        }
      }
    }
  },
  "mappings": {
    "properties": {
      "product_id": {
        "type": "integer"
      },
      "name": {
        "type": "keyword"
      },
      "long_description": {
        "type": "text",
        "index": true,
        "analyzer": "synonym"
      },
      "department": {
        "type": "text",
        "index": true
      }
    }
  }
}
'

```

### Creating a Document 

https://www.elastic.co/guide/en/elasticsearch/reference/current/docs-index_.html

```shell
curl -k -u "elastic:$PASSWORD" -X POST "https://13.88.141.162:9200/products/_doc" -H 'Content-Type: application/json' -d'
{
  "@timestamp": "2020-11-15T13:12:00",
  "product_id": 1000,
  "name": "Cold Orange Soda",
  "department" : "beverage",
  "long_description": "This is a great soda that goes well with cookies when you are relaxing and watching a soccer game"
}
'


curl -k -u "elastic:$PASSWORD" -X PUT "https://13.88.141.162:9200/products/_doc/1?pretty" -H 'Content-Type: application/json' -d'
{
  "@timestamp": "2020-11-15T13:12:00",
  "product_id": 1000,
  "name": "Cold Orange Soda",
  "department" : "beverage",
  "long_description": "This is a great soda that goes well with cookies when you are relaxing and watching a soccer game"
}
'
```


### Querying the Index for Data

https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-match-query.html

https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-query-string-query.html

https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl-match-query-phrase.html

```shell
# searches for records containing the word pop
curl -k -u "elastic:$PASSWORD" -X POST "https://13.88.141.162:9200/products/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "query": {
    "match": {
      "long_description": {
        "query": "pop"
      }
    }
  }
}
'
# searches for documents containing the word buscuit
curl -k -u "elastic:$PASSWORD" -X POST "https://13.88.141.162:9200/products/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "query": {
    "match": {
      "long_description": {
        "query": "buscuit"
      }
    }
  }
}
'

```

