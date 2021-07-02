# See https://docs.microsoft.com/en-us/azure/azure-functions/create-first-function-cli-python?tabs=azure-cli%2Ccmd%2Cbrowser

# 
# Set global environment variables
. setenvvars.sh

# Create  function project
func init NeighborlyAPI --python
cd NeighborlyAPI

# Add new function with template
# func new creates a subfolder matching the function name that contains a code file appropriate to the project's chosen language and a configuration file named function.json.
#echo func new --name $APPNAME --template "HTTP trigger" --authlevel "anonymous"
#func new --name $APPNAME --template "HTTP trigger" --authlevel "anonymous"

# Publish app to Azure 
CMD="func azure functionapp publish $FCNAPPNAME --python"
echo $CMD
eval $CMD
