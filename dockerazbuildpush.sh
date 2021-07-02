. setenvvars.sh 

cd $FE
BUILDCMD="docker build . -t $DOCKERLOGINSVR/neighborlyapp"
LOGINCOMD="az acr login -n $REGNAME"
PUSHCMD="docker push $DOCKERLOGINSVR/neighborlyapp"

echo $BUILDCMD
eval $BUILDCMD

echo $LOGINCMD
eval $LOGINCMD

echo $PUSHCMD
eval $PUSHCMD