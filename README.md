
```markdown
# 🧪 ModernSoftwareAppCsharp

Projet réalisé dans le cadre d’un TP visant à mettre en place une automatisation du cycle de vie de développement logiciel (CI/CD) avec **GitHub Actions**, **C#**, et **Docker**.

## 🚀 Objectifs

- Créer une application console en C# (.NET 9)
- Ajouter un test unitaire avec xUnit
- Configurer un pipeline CI/CD avec GitHub Actions
- Vérifier le formatage du code (`dotnet format`)
- Dockeriser l’application
- Utiliser un secret GitHub dans le workflow
- Simuler un déploiement via un script bash

## 📂 Structure

```
├── .github/workflows/dotnet.yml    # Pipeline GitHub Actions
├── ModernSoftwareApp/              # App principale
├── ModernSoftwareApp.Tests/        # Tests unitaires
├── Dockerfile                      # Dockerisation
├── deploy.sh                       # Script de déploiement simulé
```

## 📦 Lancer le projet

```bash
# Cloner le projet
git clone https://github.com/memehoueibib/ModernSoftwareAppCsharp.git
cd ModernSoftwareAppCsharp

# Lancer les tests
dotnet test

# Dockeriser
docker build -t modernsoftwareapp .
docker run modernsoftwareapp
```

## ✅ Résultat attendu

```bash
✅ Hello from inside the Docker container!
```

---

© TP 2025 – Projet pédagogique
```
