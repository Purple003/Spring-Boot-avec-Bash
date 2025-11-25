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

## Captures d'écran

### Capture: Code des Scripts

**Emplacement** : Fichiers `scripts/run.sh`, `scripts/healthcheck.sh`  
<img width="760" height="271" alt="Screenshot 2025-11-25 133656" src="https://github.com/user-attachments/assets/a64a7419-91af-4720-9b0b-0d631482ed13" />

<img width="731" height="146" alt="Screenshot 2025-11-25 141521" src="https://github.com/user-attachments/assets/aac69545-9710-48e6-b1d2-4b90cd297bf2" />

**Archive des Logs**
<img width="748" height="203" alt="Screenshot 2025-11-25 153345" src="https://github.com/user-attachments/assets/e824ae77-4721-4087-9ea5-8abde8de9f6c" />

**Liste scripts terminal**
<img width="737" height="355" alt="Screenshot 2025-11-25 153414" src="https://github.com/user-attachments/assets/d7be3a45-76a6-41ab-a02f-c21547f6648a" />


## Compétences Acquises

- ✓ Automatisation avec Bash
- ✓ Gestion des processus (nohup, kill, ps)
- ✓ Redirections de flux (>, 2>&1)
- ✓ Supervision (logs, healthcheck)
- ✓ Déploiement automatisé
- ✓ Configuration Spring Boot

##  Auteur

**Nom** : Arroche Aya  
