# Base image
FROM python:3.10

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier les fichiers nécessaires
COPY . .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port Flask
EXPOSE 5000

# Lancer l'app
CMD ["python", "app.py"]
