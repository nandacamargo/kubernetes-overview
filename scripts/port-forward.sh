POD_NAME=$(kubectl -n python-test get pods | awk '{print $1}' | tail -n1)
kubectl -n python-test port-forward pods/$POD_NAME 5000:5000