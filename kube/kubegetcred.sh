. ~/proj2/setenvvars.sh

CMD="az aks get-credentials --name $KUBECLUSTERNAME --resource-group $RESOURCEGP"

echo $CMD
eval $CMD

# Execute this based on comment in Udacity Knowledgebase
#   az aks update -n <kubernetes-cluster-name> -g <resourcegroup> --attach-acr <container-registry-name>
CMD="az aks update -n $KUBECLUSTERNAME -g $RESOURCEGP --attach-acr $REGNAME"
echo $CMD
eval $CMD

# Run the kubectl get nodes command to check that you can connect to your cluster, and confirm its configuration.
kubectl get nodes