#! /bin/sh

SRC_DIR='bkifin'
DEST_DIR='github-bkifin/'
RADARR_BACKUP_DIR='bkifin/radarr/Backups/manual/'

cd ~
cp "$SRC_DIR"/docker-compose.yml github-bkifin/
cp "$SRC_DIR"/Makefile github-bkifin/
cp update-backup.sh github-bkifin/
cp -p "`ls -dtr1 "$RADARR_BACKUP_DIR"/* | tail -1`" "$DEST_DIR"/Backups/

cd github-bkifin/
git add .
git commit -m "Backup"
git push
