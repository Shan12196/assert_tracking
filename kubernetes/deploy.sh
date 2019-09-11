kubectl apply -f /opt/kubedeploy/kubernetes/persistent-volume.yml
kubectl apply -f /opt/kubedeploy/kubernetes/persistent-volume-claim.yml


echo "Creating the database credentials..."

kubectl apply -f /opt/kubedeploy/kubernetes/secret.yml


echo "Creating the postgres deployment and service..."

kubectl create -f /opt/kubedeploy/kubernetes/postgres-deployment.yml
kubectl create -f /opt/kubedeploy/kubernetes/postgres-service.yml



echo "Creating the flask deployment and service..."

kubectl create -f /opt/kubedeploy/kubernetes/flask-deployment.yml
kubectl create -f /opt/kubedeploy/kubernetes/flask-service.yml


kubectl create -f /opt/kubedeploy/kubernetes/ui-deployment.yml
kubectl create -f /opt/kubedeploy/kubernetes/ui-service.yml
kubectl create -f /opt/kubedeploy/kubernetes/devicemanagement-deployment.yml
kubectl create -f /opt/kubedeploy/kubernetes/devicemanagement-service.yml
kubectl create -f /opt/kubedeploy/kubernetes/usermanagement-deployment.yml
kubectl create -f /opt/kubedeploy/kubernetes/usermanagement-service.yml


echo "Adding the ingress..."

#minikube addons enable ingress
#kubectl apply -f /opt/kubedeploy/kubernetes/minikube-ingress.yml

