# Check for updates and upgrades
sudo apt-get update -y && sudo apt-get upgrade -y

# Install some packages
sudo apt-get install curl apt-transport-https ca-certificates

##################
# Install docker
##################
curl -s https://get.docker.com/ | bash


##################
# Install Kubectl
##################

# Donwload public signing key
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg

# Add Kubernetes repo
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

# Update apt index and install kubectl
sudo apt-get update
sudo apt-get install -y kubectl

# Check version
echo "########## Kubectl version ##########"
kubectl version
echo "#####################################"

##################
# Install Minikube
##################

# Download deb package and install it
cd ~/Downloads
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb

# Check minikube version
echo "########## Minikube version ##########"
minikube version
echo "######################################"

# Start minikube
minikube start
