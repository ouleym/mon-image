### Partie A

1. Je me suis assure que Docker et Docker Compose sont installés sur ma machine.
2. Exécutez la commande suivante pour lancer le serveur :
  #terminal
    docker-compose up
3. L'application sera accessible à l'adresse suivante :
    http://localhost:8000

### Partie B
 j ai d abord creer le fichier requirement.txt
     New-Item -ItemType File -Path .\requirements.txt
 ensuite j ai ajouter les dependances a l interieur
     Flask
     requests
     gunicorn
1.Construire l'image Docker : 
   docker build -t mon-image:latest .
2.Se connecter à DockerHub via la ligne de commande. 
   docker login
3.Taguez l image
   docker tag mon-image:latest ouley02/mon-image:v1.0
4.POUSSEZ l image sur dockerHub
   docker push ouley02/mon-image:v1.0


### Partie C

## Pipeline CI/CD

À chaque fois qu'un commit est effectué sur la branche `main`, un pipeline GitHub Actions est déclenché. Il construit l'image Docker et la pousse vers DockerHub.

J ai d abord creer un depot github mon image
1.Créer un fichier de pipeline GitHub Actions
    docker-pipeline.yml qui se trouve dans .github/workflows/
2.Crée un dépôt sur DockerHub pour stocker mon image.
Après la configuration du pipeline CI/CD et l'authentification réussie via GitHub Actions, chaque push sur la branche main entraînera la construction et l'upload de l'image vers ce dépôt DockerHub.

## Récupérer l'image depuis DockerHub

L'image Docker est disponible sur DockerHub. Pour la télécharger, utilisez la commande suivante :

```bash
docker pull ouley02/mon-image:latest  
```
 
 ### Pousser les changements vers GitHub
 
    git add .
    git commit -m "Add GitHub Actions CI/CD pipeline"
    git push origin main
#








