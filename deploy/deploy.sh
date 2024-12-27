

docker image pull cheikhckrt/custom-laravel:8.2

microk8s kubectl apply -f nginx-config.conf

microk8s kubectl apply -f laravel-config-env.yaml

microk8s kubectl apply -f laravel-setup.yaml

helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

helm install mongodb-sharded bitnami/mongodb-sharded   --namespace dev   --create-namespace   --values mongo-shared/values.yaml
