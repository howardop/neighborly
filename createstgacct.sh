# From https://docs.microsoft.com/en-us/azure/azure-functions/create-first-function-cli-python?tabs=azure-cli$2Ccmd$2Cbrowser

# RESOURCEGP=cloud-demo-146886
# PLANNAME=Consumption
# FCNAPPNAME=hlofcnap
# STGACCT=hlostgacct2
# REGION=eastus

# Set global environment variables
. setenvvars.sh

echo az storage account create \
  --resource-group $RESOURCEGP \
  --name $STGACCT \
  --kind StorageV2 \
  --location $REGION 
  
az storage account create \
  --resource-group $RESOURCEGP \
  --name $STGACCT \
  --kind StorageV2 \
  --location $REGION 

