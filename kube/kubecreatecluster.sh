. ~/proj2/setenvvars.sh

#echo az aks create \
    # --resource-group $RESOURCEGP \
    # --name $KUBECLUSTERNAME \
    # --node-count 2 \
    # --enable-addons http_application_routing \
    # --enable-managed-identity \
    # --generate-ssh-keys --node-vm-size Standard_B2s --location $REGION 
    

#az aks create \
    # --resource-group $RESOURCEGP \
    # --name $KUBECLUSTERNAME \
    # --node-count 2 \
    # --enable-addons http_application_routing \
    # --enable-managed-identity \
    # --generate-ssh-keys --node-vm-size Standard_B2s --location $REGION 
    

CMD="az aks create --name hlokubecluster5  --resource-group $RESOURCEGP --node-count 2  --generate-ssh-keys --node-vm-size Standard_B2s --location $REGION --attach-acr /subscriptions/1d52d90c-7dc0-47ce-a1d6-d81bea037969/resourceGroups/cloud-demo-148785/providers/Microsoft.ContainerRegistry/registries/hlodreg"
echo $CMD
eval $CMD