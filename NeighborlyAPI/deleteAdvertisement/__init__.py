import azure.functions as func
import pymongo
from bson.objectid import ObjectId

# importing sys to add . to path to make python find setvars.py
import sys
# sys.path is a list of absolute path strings
sys.path.append('.')
import setvars

def main(req: func.HttpRequest) -> func.HttpResponse:

    id = req.params.get('id')

    if id:
        try:
            url = setvars.MONGOCONNECTSTR
            client = pymongo.MongoClient(url)
            database = client.hlomongodb2
            collection = database.Ads
            
            query = {'_id': ObjectId(id)}
            result = collection.delete_one(query)
            return func.HttpResponse("")

        except:
            print("could not connect to mongodb")
            return func.HttpResponse("could not connect to mongodb", status_code=500)

    else:
        return func.HttpResponse("Please pass an id in the query string",
                                 status_code=400)
