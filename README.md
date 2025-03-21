### Partie A

1. Assurez-vous que Docker et Docker Compose sont installés sur votre machine.
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


