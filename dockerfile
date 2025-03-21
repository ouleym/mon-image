# Utiliser une image Python stable
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de l'application
COPY . /app


COPY requirements.txt /app/

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port utilisé par l'application
EXPOSE 8000

# Définir la commande pour démarrer l'application
CMD ["python", "app.py"]
