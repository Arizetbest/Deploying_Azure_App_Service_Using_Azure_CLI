# This script create all dependencies such Azure Resource Group, App Service and deploy web app and deployment source as GitHub Repository

#!/bin/bash

# Login to Azure
az login

# Assign variables
RESOURCE_GROUP_NAME=CloudTrainer
APPSERVICE_PLAN_NAME=my-app-plan$RANDOM
WEBAPP_NAME=my-web-app$RANDOM
DEPLOYMENT_SOURCE=https://github.com/Arizetbest/documentation.git
LOCATION=eastus

# Create a resource group
az group create --name $RESOURCE_GROUP_NAME --location $LOCATION

# Create an App Service plan
az appservice plan create --name $APPSERVICE_PLAN_NAME --resource-group $RESOURCE_GROUP_NAME --location $LOCATION --sku FREE

# Create a web app
az webapp create --name $WEBAPP_NAME --resource-group $RESOURCE_GROUP_NAME --plan $APPSERVICE_PLAN_NAME

# Deploy code from GitHub to the web app
az webapp deployment source config --name $WEBAPP_NAME --resource-group $RESOURCE_GROUP_NAME --repo-url $DEPLOYMENT_SOURCE --branch master --manual-integration

# (Optional) If you want to sync the deployment
az webapp deployment source sync --name $WEBAPP_NAME --resource-group $RESOURCE_GROUP_NAME