import logging
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

    logging.info('Python getPosts trigger function processed a request.')

    try:
        # TODO: __Done__ Update with appropriate MongoDB connection information
        url = setvars.MONGOCONNECTSTR
        client = pymongo.MongoClient(url)
        database = client.hlomongodb2
        collection = database.Posts

        result = collection.find({})
        result = dumps(result)

        return func.HttpResponse(result, mimetype="application/json", charset='utf-8', status_code=200)
    except:
        return func.HttpResponse("Bad request.", status_code=400)