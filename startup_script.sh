#!/bin/bash
sudo apt-get update
sudo apt-get install kubectl
sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
gcloud container clusters get-credentials privatecluster --zone <Zone> --project <projectname>
kubectl get node