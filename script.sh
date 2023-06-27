#!/bin/bash

# Installer les dépendances requises
sudo apt-get update
sudo apt-get install -y curl

# Installer Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh


# Installer kubectl
sudo apt-get update
sudo apt-get install -y apt-transport-https gnupg2
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

# Installer Minikube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube /usr/local/bin/

# Démarrer Minikube
minikube start --force

# Vérifier l'installation
minikube status

# Créer le namespace "projet1"
kubectl create namespace projet1

# Définir le contexte du namespace "projet1"
kubectl config set-context --current --namespace=projet1

# Créer un fichier YAML pour le déploiement
cat <<EOF > postgres-deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: postgres-deployment
spec:
  replicas: 2
  selector:
    matchLabels:
      app: postgres
  template:
    metadata:
      labels:
        app: postgres
    spec:
      containers:
      - name: postgres
        image: postgres
        ports:
        - containerPort: 5432
        env:
        - name: POSTGRES_PASSWORD
          value: mysecretpassword
EOF

# Déployer PostgreSQL sur Kubernetes
kubectl apply -f postgres-deployment.yaml

# Vérifier le déploiement
kubectl get deployments

# Vérifier les pods en cours d'exécution
kubectl get pods

# Créer un fichier YAML pour le service
cat <<EOF > postgres-service.yaml
apiVersion: v1
kind: Service
metadata:
  name: postgres-service
spec:
  selector:
    app: postgres
  ports:
    - protocol: TCP
      port: 5432
      targetPort: 5432
EOF

# Déployer le service PostgreSQL sur Kubernetes
kubectl apply -f postgres-service.yaml

# Vérifier les services
kubectl get services
