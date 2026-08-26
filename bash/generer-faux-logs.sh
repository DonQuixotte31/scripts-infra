#!/bin/bash
# ------------------------------------------------------------
# generer-faux-logs.sh
# Objet     : Crée de faux logs test dans un faux dossier de logs
# Auteur    : Oclock
# Usage     : ./generer_faux-logs.sh
# Prérequis : Aucun. Testé sur Debian 13
# ------------------------------------------------------------

mkdir -p /tmp/faux-logs
cd /tmp/faux-logs

touch -d "60 days ago" tres-vieux.log
touch -d "40 days ago" vieux1.log
touch -d "40 days ago" vieux2.log
touch -d "40 days ago" "rapport de mars.log"
touch -d "10 days ago" moyen.log
touch -d "2 days ago"  recent.log
touch -d "40 days ago" archive-fevrier.gz

ls -l --time-style=long-iso
