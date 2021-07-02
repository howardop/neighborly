. setenvvars.sh

CMD="az cosmosdb keys list --name $COSMOS_ACCOUNT --resource-group $RESOURCEGP --type connection-strings"

echo $CMD
eval $CMD