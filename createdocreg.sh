. setenvvars.sh

CMD="az acr create --name $REGNAME --resource-group $RESOURCEGP --sku Basic --admin-enabled true --location $REGION"

echo $CMD
eval $CMD