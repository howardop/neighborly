. setenvvars.sh

CMD="az acr create --name $REGNAME --resource-group $RESOURCEGP --sku Basic --admin-enabled true"

echo $CMD
eval $CMD