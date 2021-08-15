. setenvvars.sh

CMD="az acr import --name $REGNAME --source docker.io/howardo/neighborlyapp --image neighborlyapp:latest"

echo $CMD
eval $CMD