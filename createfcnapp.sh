

# Set global environment variables
. setenvvars.sh

echo az functionapp create \
  --resource-group $RESOURCEGP \
  --consumption-plan-location $REGION \
  --runtime python \
  --functions-version 3 \
  --runtime-version 3.8 \
  --name $FCNAPPNAME \
  --storage-account $STGACCT \
  --os-type linux

az functionapp create \
  --resource-group $RESOURCEGP \
  --consumption-plan-location $REGION \
  --runtime python \
  --functions-version 3 \
  --runtime-version 3.8 \
  --name $FCNAPPNAME \
  --storage-account $STGACCT \
  --os-type linux

