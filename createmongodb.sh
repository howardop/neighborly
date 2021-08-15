
. setenvvars.sh

#Create a MongoDB API database
echo "Creating MongoDB API database $DATABASE_NAME"
echo az cosmosdb mongodb database create -a $COSMOSDB_ACCOUNT -g $RESOURCEGP -n $DATABASE_NAME

az cosmosdb mongodb database create \
    -a $COSMOSDB_ACCOUNT \
    -g $RESOURCEGP \
    -n $DATABASE_NAME

echo "Creating MongoDB API collection $COLLECTION"
az cosmosdb mongodb collection create \
    -a $COSMOSDB_ACCOUNT \
    -g $RESOURCEGP \
    -d $DATABASE_NAME \
    -n $COLLECTION \
