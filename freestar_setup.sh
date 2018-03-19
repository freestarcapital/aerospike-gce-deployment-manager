#!/bin/sh

if [ "$1" = "list" ]; then
    echo "List of deployments"
    gcloud deployment-manager deployments list
elif [ "$1" = "delete" ]; then    
    echo "Delete deployment $2";
    gcloud deployment-manager deployments delete $2
elif [ "$1" = "describe" ]; then
    echo "Describe $2";
    gcloud deployment-manager deployments describe $2
elif [ "$1" = "create" ]; then
    echo "Creating aerospike-cluster with config.yaml"
    gcloud deployment-manager deployments create aerospike-cluster --config config.yaml
else
    echo "freestar_setup.sh"
    echo "options: create, list, describe, delete"
fi
    
