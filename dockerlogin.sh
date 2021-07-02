. setenvvars.sh

CMD="docker login $DOCKERLOGINSVR -u $DOCUSERNAME" 
echo $CMD
eval $CMD