# Azure Web App Deployment Script

This script provides a streamlined way to create and deploy an Azure Web App using the Azure CLI. It utilizes the az command-line tool to automate the process of managing Azure resources.

Login to Azure:

Uses az login to authenticate with your Azure account.
Assign Variables: 

Sets up variables such as resource group name, app service plan name, web app name, deployment source (GitHub repository), and location.
Create a Resource Group:

Executes az group create to create a new Azure resource group.
Create an App Service Plan:

Executes az appservice plan create to create an App Service plan with a specified SKU (FREE in this case).
Create a Web App:

Executes az webapp create to create a new web app using the defined resource group and app service plan.
Deploy Code from GitHub:

Configures the web app for deployment from a GitHub repository using az webapp deployment source config.
Optional Deployment Sync:
Optionally, you can sync the deployment using az webapp deployment source sync.

## Usage

## Prerequisites:
Ensure that you have Azure CLI installed.
Clone the Repository:
git clone https://github.com/Arizetbest/documentation.git
## Execute the Script:
bash deploy-webapp.sh
This will execute the deployment script, creating the necessary Azure resources and deploying the web app.

## Notes
This script is a basic example and may need adjustments based on your specific requirements.
Make sure to customize variables, such as RESOURCE_GROUP_NAME, APPSERVICE_PLAN_NAME, and WEBAPP_NAME, to suit your project naming conventions.
The script assumes a GitHub repository for deployment. Modify the DEPLOYMENT_SOURCE variable accordingly if using a different source.
Always review and adjust the script based on your security and deployment requirements before using it in a production environment.
