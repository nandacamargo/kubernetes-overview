# Point the shell to minikube's docker-daemon
eval $(minikube -p minikube docker-env)

# Build the image
docker build -f ../Dockerfile -t simple-flask-app:1.0 ../

# If you only want to run Python app, without using 
# Kubernetes, uncomment the line below
#docker run -it -p 5000:5000 simple-flask-app:1.0