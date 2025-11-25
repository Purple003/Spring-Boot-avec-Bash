# Spring Bash - TP Automatisation

Projet Spring Boot démontrant l'automatisation avec des scripts Bash.

## Structure du Projet

```
springbash/
├── src/main/
│   ├── java/ma/ens/springbash/
│   │   └── SpringbashApplication.java
│   └── resources/
│       └── application.properties
├── scripts/
│   ├── run.sh              # Démarrage de l'application
│   ├── stop.sh             # Arrêt de l'application
│   ├── logs.sh             # Affichage des logs
│   ├── deploy.sh           # Compilation et déploiement
│   ├── healthcheck.sh      # Vérification de santé
│   ├── archive_logs.sh     # Archivage des logs
│   └── remote_deploy.sh    # Déploiement distant
├── pom.xml
└── README.md
```

## Configuration

- **Port** : 8085
- **Base de données** : H2 
- **Java** : 21
- **Spring Boot** : 3.3.5

## Utilisation

### Prérequis
```bash
# Donner les permissions d'exécution
chmod +x scripts/*.sh
chmod +x mvnw
```

### Démarrage 
1. Ouvrir le projet 
2. Recharger Maven : Clic droit sur `pom.xml` > Maven > Reload
3. Lancer : `SpringbashApplication.java`
4. Vérifier : http://localhost:8085

### Scripts Bash

#### Vérification de santé
```bash
./scripts/healthcheck.sh
# Résultat attendu : {"status":"UP"}
```

#### Archivage des logs
```bash
./scripts/archive_logs.sh
# Crée : logs_YYYYMMDD.tar.gz
```

#### Arrêt de l'application
```bash
./scripts/stop.sh
```

##  Résultats des Tests

### Scripts Fonctionnels
- **healthcheck.sh** : ✓ Retourne `{"status":"UP"}`
- **archive_logs.sh** : ✓ Crée l'archive `logs_20251125.tar.gz`
- **stop.sh** : ✓ S'exécute correctement

###  Limitations Réseau
- **run.sh** et **deploy.sh** : Bloqués par le réseau (impossible de télécharger Maven)
- **Solution** : Utilisation d'IntelliJ IDEA pour le démarrage

## Captures d'écran pour le Rapport



### Capture: Code des Scripts
**Emplacement** : Fichiers `scripts/run.sh`, `scripts/healthcheck.sh`  

### Capture: Démarrage Réussi
**Emplacement** : Console IntelliJ  




## Compétences Acquises

- ✓ Automatisation avec Bash
- ✓ Gestion des processus (nohup, kill, ps)
- ✓ Redirections de flux (>, 2>&1)
- ✓ Supervision (logs, healthcheck)
- ✓ Déploiement automatisé
- ✓ Configuration Spring Boot

##  Auteur

**Nom** : Arroche Aya  
