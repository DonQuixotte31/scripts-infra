#!/bin/bash
# ------------------------------------------------------------
# nettoyage-systeme.sh
# Objet    : libère de l'espace disque (paquets, cache, journaux)
# Auteur   : prenom.nom@exemple.fr
# Usage    : sudo ./nettoyage-systeme.sh
# Prérequis: droits root, distribution à base de apt
# ------------------------------------------------------------

echo "=== Nettoyage du système ==="

echo "Paquets inutiles..."
# sudo apt autoremove -y

echo "Cache des paquets..."
# sudo apt clean

echo "Journaux de plus de 7 jours..."
# sudo journalctl --vacuum-time=7d

echo "Nettoyage terminé."
