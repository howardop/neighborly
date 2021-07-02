import azure.functions as func
import pymongo
import json
from bson.json_util import dumps

# importing sys to add . to path to make python find setvars.py
import sys
# sys.path is a list of absolute path strings
sys.path.append('.')
import setvars

def main(req: func.HttpRequest) -> func.HttpResponse:

    try:
        url = setvars.MONGOCONNECTSTR
        client = pymongo.MongoClient(url)
        database = client.hlomongodb2
        collection = database.Ads


        result = collection.find({})
        result = dumps(result)

        return func.HttpResponse(result, mimetype="application/json", charset='utf-8')
    except:
        print("could not connect to mongodb")
        return func.HttpResponse("could not connect to mongodb",
                                 status_code=400)

