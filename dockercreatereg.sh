. setenvvars.sh

CMD="az acr create --resource-group $RESOURCEGP --name $REGNAME --sku Basic --location $REGION --subscription=1d52d90c-7dc0-47ce-a1d6-d81bea037969"
echo $CMD
eval $CMD