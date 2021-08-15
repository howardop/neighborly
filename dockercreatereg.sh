. setenvvars.sh

CMD="az acr create --resource-group $RESOURCEGP --name $REGNAME --sku Basic"

echo $CMD
eval $CMD