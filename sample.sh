curl --user admin:z3r3br@l -XGET "http://166.70.118.99:31920/seed_target/_search" -H 'Content-Type: application/json' -d'{  "size": 2000,   "query": {    "bool": {      "must": [        {          "match": {            "sub_vertical.id": "16"          }        },        {          "match": {            "status": "active"          }        },        {          "match": {            "response_type": "Json"          }        }      ]    }  },  "_source": ["json_url"]}'