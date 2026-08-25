# scripts-infra

Mes scripts d'administration système, écrits pendant la saison Scripting.
Un dossier par langage, un script par tâche.

## Contenu

| Script | Rôle |
|---|---|
| `bash/monitoring-reseau.sh` | Affiche un état rapide du réseau de la machine |
| `bash/nettoyage-systeme.sh` | Libère de l'espace disque |

## Utilisation

```bash
./bash/monitoring-reseau.sh /var/log 30
```

```bash
./bash/nettoyage-systeme.sh
```

## Prérequis

- Bash, testé sur Debian 12
- Droits de lecture sur les dossiers analysés
