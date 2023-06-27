# postgres-kubernetes

1 ère étape: Installation de Docker en utilisant les commandes illustrées dans la figure ci-dessous:

![image](https://github.com/Islem99/postgres-kubernetes/assets/84632827/1f0e2032-4891-4b39-a658-d539cfdf380a)



2 ème étape: Installation de kubectl en utilisant les commande illustrées dans la figure ci-dessous:

![image](https://github.com/Islem99/postgres-kubernetes/assets/84632827/f23dc72a-a992-4075-aa33-28f239517674)



3 ème étape: 

Installation de Minikube comme il est illustré dans la figure ci-dessous:

![image](https://github.com/Islem99/postgres-kubernetes/assets/84632827/35374296-96b4-42c7-8a4a-78a11c018a6b)

Démarrage de Minikube

![image](https://github.com/Islem99/postgres-kubernetes/assets/84632827/915e9eef-3642-45b4-8bcf-15fa9796a209)

Vérification de status de Minikube

![image](https://github.com/Islem99/postgres-kubernetes/assets/84632827/cc25990e-f1c6-41d3-8cf2-0e8d7ae990e3)

4ème étape: 

création de namespace appelé "projet1"

![image](https://github.com/Islem99/postgres-kubernetes/assets/84632827/d25afa49-a053-4b9c-9e44-bf845c4b5c27)

Définition de contexte du namespace "projet1"

![image](https://github.com/Islem99/postgres-kubernetes/assets/84632827/acd0fd14-d372-4ed0-b8c1-b42ae19e63d8)

Vérification de namespace dans lequel on travaille:

![namespace](https://github.com/Islem99/postgres-kubernetes/assets/84632827/53194646-7c99-47ee-93b6-03d9a979c06c)


5éme étape:  Création de fichier YAML pour le déploiment de conteneur postgresql sur kubernetes

![image](https://github.com/Islem99/postgres-kubernetes/assets/84632827/77c8ae11-2d86-4e9e-9697-865d422270f9)


6 ème étape: 
déploiement de postgresql sur kubernetes

![image](https://github.com/Islem99/postgres-kubernetes/assets/84632827/21a805b1-78f1-4258-86ed-e7e5ec3c384d)

donner les privilèges d'exécution au script

![chmod](https://github.com/Islem99/postgres-kubernetes/assets/84632827/32e1db5f-ebde-417c-b849-72a54729ea4a)


Vérification de status des pods

![pods](https://github.com/Islem99/postgres-kubernetes/assets/84632827/256671da-6846-4e27-91cd-978dfa7ef864)

Vérification des déploiements

![deployments](https://github.com/Islem99/postgres-kubernetes/assets/84632827/7f57328b-be8e-43d8-878c-c9f430a340f2)

7ème étape:
Création de fichier YAML pour le service posgresql

![image](https://github.com/Islem99/postgres-kubernetes/assets/84632827/e5c774d0-efcd-4565-b7c2-4eebb2d75cb2)

8ème étape:
Déploiement de service posgresql sur Kubernetes 

![image](https://github.com/Islem99/postgres-kubernetes/assets/84632827/2427c3a9-3842-49f9-bdb0-0ed3c8c81058)

9éme étape:
Vérification des services

![services](https://github.com/Islem99/postgres-kubernetes/assets/84632827/e3cdb45b-92f2-417b-9038-113f67fa4209)



