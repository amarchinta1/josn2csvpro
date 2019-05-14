curl --user admin:z3r3br@l -XGET "http://166.70.118.99:31920/seed_target/_search" -H 'Content-Type: application/json' -d'
{
  "size": 10000, 
  "query": {
    "bool": {
      "must": [
        
        {
          "match": {
            "status": "active"
          }
        },
        {
          "match": {
            "sub_vertical.id": "15"
          }
        }
      ]
    }
  },
  "_source": ["domain"]
}'