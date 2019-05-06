curl --user admin:z3r3br@l -XGET "http://166.70.118.99:31920/seed_target/_search" -H 'Content-Type: application/json' -d'
{
  "size": 0, 
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "sub_vertical.id": "15"
          }
        },
        {
          "match": {
            "user.id": "23"
          }
        },
        {
          "match": {
            "status": "active"
          }
        }
      ]
    }
  },
  "aggs": {
    "NAME": {
      "terms": {
        "field": "seed_group.id"
        },
        "aggs": {
          "NAME": {
            "terms": {
              "field": "_id"
            }
          }
        }
    }
  }
}'
