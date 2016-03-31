# gce-deployment-manager
Google Deployment Manager scripts for deploying Aerospike CE on Google Compute Engine (GCE)

Download a copy of this repo using either the Download link or use `git clone`.

# Usage

Create a project in Google Compute Engine

Enable Deployment Manager API for your project: https://console.cloud.google.com/flows/enableapi?apiid=deploymentmanager
or from API Manager and enable `Google Cloud Deployment Manager API` and `Google Cloud Deployment Manager V2 API`

Download, install and configure `gcloud` from https://cloud.google.com/sdk/#Quick\_Start

Run `deploy.sh` and pass in a name for your deployment.

    deploy.sh aerospike-deployment

# Configuration
Edit config.yaml with parameters to your liking
