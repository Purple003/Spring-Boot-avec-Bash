#!/bin/bash
echo "Démarrage de l'application Spring Boot..."

mkdir -p logs
nohup ./mvnw spring-boot:run > logs/app.log 2>&1 &
echo "Application démarrée avec succès (PID : $!)"
