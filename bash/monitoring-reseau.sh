#!/bin/bash
# ------------------------------------------------------------
# monitoring-reseau.sh
# Objet    : affiche un état rapide du réseau de la machine
# Auteur   : prenom.nom@exemple.fr
# Usage    : ./monitoring-reseau.sh
# Prérequis: iproute2 (ip, ss), testé sur Debian 12
# ------------------------------------------------------------

echo "=== Monitoring réseau ==="

echo "--- Interfaces réseau ---"
ip addr show

echo "--- Connexions à l'écoute ---"
ss -tuln

echo "--- Test de connectivité ---"
ping -c 3 1.1.1.1
