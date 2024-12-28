#pull custom-laravel image (deploy/Dockerfile)
docker image pull cheikhckrt/custom-laravel:8.3
#apply deployment files
microk8s kubectl apply -f nginx-config.yaml
microk8s kubectl apply -f laravel-config-env.yaml
microk8s kubectl apply -f laravel-setup.yaml

#add repo bitnami
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
#install mongodb-sharded
helm install mongodb-sharded bitnami/mongodb-sharded   --namespace dev   --create-namespace   --values mongo-shared/values.yaml
