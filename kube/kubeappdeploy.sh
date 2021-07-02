. ~/proj2/setenvvars.sh

#CMD="func kubernetes deploy --name  $KUBECLUSTERNAME --image-name hlodreg.azurecr.io/$DOCKERIMAGENAME  --dry-run > deploy.yml"
CMD="func kubernetes deploy --name  $KUBECLUSTERNAME --image-name hlodreg.azurecr.io/neighborlyapp:latest  --dry-run "

echo $CMD
eval $CMD

#CMD="func kubernetes deploy --name  $KUBECLUSTERNAME --image-name  $REGNAME.azurecr.io/$DOCKERIMAGENAME —polling-interval 3 —cooldown-period 5"
#CMD="func kubernetes deploy --name  $KUBECLUSTERNAME --image-name  hlodreg.azurecr.io/neighborlyapp:latest —polling-interval 3 —cooldown-period 5"

#echo $CMD
#eval $CMD


#CMD="kubectl apply -f deploy.yml"

#echo $CMD
#eval $CMD