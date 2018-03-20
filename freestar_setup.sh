#!/bin/sh

if [ "$1" = "list" ]; then
    echo "List of deployments"
    gcloud deployment-manager deployments list
elif [ "$1" = "delete" ]; then    
    echo "Delete deployment $2";
    gcloud deployment-manager deployments delete $2
elif [ "$1" = "describe" ]; then
    echo "Describe cluster $2";
    gcloud deployment-manager deployments describe $2
elif [ "$1" = "create" ]; then
    echo "Creating cluster with config.yaml named $2"
    gcloud deployment-manager deployments create $2 --config config.yaml
else
    echo "freestar_setup.sh"
    echo "options: create, list, describe, delete"
fi
    
