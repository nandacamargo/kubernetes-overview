kubectl apply -f ../kubernetes/namespace.yaml
echo "******* Existing namespaces ********"
kubectl get ns
echo "************************************"

kubectl apply -f ../kubernetes/svc.yaml
echo "******* Existing services ********"
kubectl -n python-test get svc
echo "**********************************"

kubectl apply -f ../kubernetes/deployment.yaml
echo "******* Everything under python-test namespace ********"
kubectl -n python-test get all
echo "*******************************************************"