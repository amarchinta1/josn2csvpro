curl --user admin:z3r3br@l -XGET "http://166.70.118.99:31920/seed_target/_search" -H 'Content-Type: application/json' -d'
{
  "size": 10000, 
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
            "status": "active"
          }
        },
        {
          "match": {
            "is_grouped": "true"
          }
        },
        {
          "match": {
            "crawl_status": "SeedFailedToLoad"
          }
        }
      ]
    }
  },
"_source":["user.id","curr_count","expected_count","url","seed_group.id"]
}'