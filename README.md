# Python App on Kubernetes

This project uses docker, kubernetes, contains a python app and some bash scripts to help automating dependencies installation, as well as the app execution.

This repo is organized in different directories:

- **kubernetes**: it contains YAML files to create kubernetes namespace, service and deployment.
- **scripts**: it contains scripts to install some packages, to build docker image, create and delete k8s resources.
- **python-app**: code related to the python app, created using Flask.

To see this app working, execute the scripts that are inside **scripts** folder, in the following order:

```
# To install docker, kubectl and minikube
./install-packages.sh

# To build docker image
./build-docker-image.sh

# Create k8s namespace, service and deployment
./create-k8s-resources.sh

# Do port forward to see application running in the browser
./port-forward.sh

# Cleanup after executing all
./delete-k8s-resources.sh
```

**Requirements**: you are using a Debian Based Linux distribution (since these scripts use commands like `apt-get update`).