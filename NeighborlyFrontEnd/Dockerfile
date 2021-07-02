# To enable ssh & remote debugging on app service change the base image to the one below
# FROM mcr.microsoft.com/azure-functions/python:3.0-python3.8-appservice
FROM mcr.microsoft.com/azure-functions/python:3.0-python3.8

ENV AzureWebJobsScriptRoot=/home/site/wwwroot \
    AzureFunctionsJobHost__Logging__Console__IsEnabled=true \
    API_URL="https://hlofcnapp2.azurewebsites.net/api" \
    SERVER_HOST='localhost' \
    SERVER_PORT=5000 \
    FLASK_ENV=development

COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY . /home/site/wwwroot

ENTRYPOINT FLASK_APP=/home/site/wwwroot/app.py flask run --host=0.0.0.0 --port=5000

###############################################################
# Base the image on the built-in Azure Functions Python image
# FROM mcr.microsoft.com/azure-functions/python:3.0-python3.8

# ENV host:logger:consoleLoggingMode=always

# # Add files from this repo to the root site folder.
# COPY . /home/site/wwwroot

# EXPOSE 8080

# # Install requirements
# RUN cd /home/site/wwwroot && pip install -r requirements.txt


