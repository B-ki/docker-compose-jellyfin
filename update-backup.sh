#! /bin/sh

SRC_DIR='bkifin'
DEST_DIR='github-bkifin/'
RADARR_BACKUP_DIR="$SRC_DIR/radarr/Backups/scheduled/"
SONARR_BACKUP_DIR="$SRC_DIR/sonarr/Backups/scheduled/"
PROWLARR_BACKUP_DIR="$SRC_DIR/prowlarr/Backups/scheduled/"

cd ~
cp "$SRC_DIR"/docker-compose.yml github-bkifin/
cp "$SRC_DIR"/Makefile github-bkifin/
cp update-backup.sh github-bkifin/
rm "$DEST_DIR"/Backups/*
cp -p "`ls -dtr1 "$RADARR_BACKUP_DIR"/* | tail -1`" "$DEST_DIR"/Backups/
cp -p "`ls -dtr1 "$SONARR_BACKUP_DIR"/* | tail -1`" "$DEST_DIR"/Backups/
cp -p "`ls -dtr1 "$PROWLARR_BACKUP_DIR"/* | tail -1`" "$DEST_DIR"/Backups/
docker stop jellyfin
cp -R jellyfin-config/ jellyfin-config-backup/
rm -rf jellyfin-config-backup/metadata/
mkdir jellyfin-config-backup/metadata/
tar -cf github-bkifin/jellyfin-config-backup.tar jellyfin-config-backup/
rm -rf jellyfin-config-backup/

cd ~/github-bkifin/
git add .
git commit -m "Backup"
git push

cd ~/bkifin/
make
