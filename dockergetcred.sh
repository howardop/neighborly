. setenvvars.sh

az acr update -n $DOCUSERNAME --admin-enabled true
az acr credential show --name $REGNAME