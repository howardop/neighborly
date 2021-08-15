. setenvvars.sh

# change the cluster name to your own
CMD="az aks create --name $KUBECLUSTERNAME  --resource-group $RESOURCEGP --node-count 1  --generate-ssh-keys --node-vm-size standard_b2s --attach-acr hlodreg"
echo $CMD
eval $CMD

# now let's pull the credentials for your cluster
az aks get-credentials  --name  $KUBECLUSTERNAME --resource-group $RESOURCEGP

# verify the connection to our cluster
kubectl get nodes

# get keda
func kubernetes install --namespace keda  

#Authenticate with Azure Container Registry from Azure Kubernetes Service
# https://docs.microsoft.com/en-us/azure/aks/cluster-container-registry-integration
az aks update -n $KUBECLUSTERNAME -g $RESOURCEGP --attach-acr hlodreg


# Now we are ready to deploy
func kubernetes deploy --name  $KUBECLUSTERNAME --image-name $DOCKERLOGINSVR/neighborlyapp  --dry-run > deploy.yml

func kubernetes deploy --name  $KUBECLUSTERNAME --image-name  $DOCKERLOGINSVR/neighborlyapp —polling-interval 3 —cooldown-period 5

kubectl apply -f deploy.yml