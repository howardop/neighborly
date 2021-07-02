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
    request = req.get_json()

    if request:
        try:
            url = setvars.MONGOCONNECTSTR
            client = pymongo.MongoClient(url)
            database = client.hlomongodb2
            collection = database.Ads
            
            filter_query = {'_id': ObjectId(id)}
            update_query = {"$set": eval(request)}
            rec_id1 = collection.update_one(filter_query, update_query)
            return func.HttpResponse(status_code=200)
        except:
            print("could not connect to mongodb")
            return func.HttpResponse('Could not connect to mongodb', status_code=500)
    else:
        return func.HttpResponse('Please pass name in the body', status_code=400)

