kubectl apply -f namespace.yaml

echo "******* Existing namespaces ********"
kubectl get ns
echo "************************************"

kubectl apply -f svc.yaml
echo "******* Existing services ********"
kubectl -n python-test get svc
echo "**********************************"

