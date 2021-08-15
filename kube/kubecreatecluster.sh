. ~/proj2/setenvvars.sh

echo az aks create \
    --resource-group $RESOURCEGP \
    --name $KUBECLUSTERNAME \
    --node-count 2 \
    --enable-addons http_application_routing \
    --enable-managed-identity \
    --generate-ssh-keys --node-vm-size Standard_B2s

az aks create \
    --resource-group $RESOURCEGP \
    --name $KUBECLUSTERNAME \
    --node-count 2 \
    --enable-addons http_application_routing \
    --enable-managed-identity \
    --generate-ssh-keys --node-vm-size Standard_B2s