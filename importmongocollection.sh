#### Warning #####
# mongoimport doesn't work with server version 3.6, so set version to 3.2 in createcosmosdbacct.sh

. setenvvars.sh

echo mongoimport  -d $DATABASE_NAME --collection Ads  --type json --jsonArray $CONNECTIONSTRING < ./sample_data/sampleAds.json  

mongoimport   -d $DATABASE_NAME --collection Ads  --type json --jsonArray $CONNECTIONSTRING < ./sample_data/sampleAds.json 

echo mongoimport  -d $DATABASE_NAME --collection Posts  --type json --jsonArray $CONNECTIONSTRING < ./sample_data/samplePosts.json

mongoimport  -d $DATABASE_NAME --collection Posts --type json --jsonArray $CONNECTIONSTRING < ./sample_data/samplePosts.json
