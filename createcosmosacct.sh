. setenvvars.sh

# This is the new account here
# COSMOS_ACCOUNT="hlocosmoacct"

echo az cosmosdb create -n $COSMOS_ACCOUNT -g $RESOURCEGP --kind MongoDB --server-version 3.2 --locations regionName=$REGION failoverPriority=0 isZoneRedundant=False

az cosmosdb create -n $COSMOS_ACCOUNT -g $RESOURCEGP  \
--kind MongoDB --server-version 3.2 --locations regionName=$REGION failoverPriority=0 isZoneRedundant=False