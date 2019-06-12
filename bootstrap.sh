#!/bin/bash

# Configure default subscription
az account set -s $(SUBSCRIPTION_ID)

# Create resource group
az group create --location $(RESOURCE_LOCATION) --name $(RESOURCE_GROUP_NAME)

# Create app service
az appservice plan create \
    --name $(APPSERVICE_NAME)
    --location $(RESOURCE_LOCATION)
    --sku $(APPSERVICE_SKU)
    --subscription $(SUBSCRIPTION_ID)
    --number-of-workers 1
    --is-linux

# Create CosmosDB instance
