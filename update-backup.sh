#! /bin/sh

SRC_DIR='bkifin'
DEST_DIR='docker-compose-jellyfin/'
RADARR_BACKUP_DIR="$SRC_DIR/radarr/Backups/scheduled/"
SONARR_BACKUP_DIR="$SRC_DIR/sonarr/Backups/scheduled/"
SONARR_ANIME_BACKUP_DIR="$SRC_DIR/sonarr_anime/Backups/scheduled/"
PROWLARR_BACKUP_DIR="$SRC_DIR/prowlarr/Backups/scheduled/"

cd ~
cp "$SRC_DIR"/docker-compose.yml "$DEST_DIR"
cp "$SRC_DIR"/env.sample "$DEST_DIR"
cp "$SRC_DIR"/Makefile "$DEST_DIR"
#cp update-backup.sh "$DEST_DIR"
rm "$DEST_DIR"/Backups/*
cp -p "`ls -dtr1 "$RADARR_BACKUP_DIR"/* | tail -1`" "$DEST_DIR"/Backups/ 
cp -p "`ls -dtr1 "$SONARR_BACKUP_DIR"/* | tail -1`" "$DEST_DIR"/Backups/ 
cp -p "`ls -dtr1 "$SONARR_ANIME_BACKUP_DIR"/* | tail -1`" "$DEST_DIR"/Backups/ 
cp -p "`ls -dtr1 "$PROWLARR_BACKUP_DIR"/* | tail -1`" "$DEST_DIR"/Backups/ 
#docker stop jellyfin
#cp -R jellyfin-config/ jellyfin-config-backup/
#rm -rf jellyfin-config-backup/metadata/
#mkdir jellyfin-config-backup/metadata/
#tar -cf "$DEST_DIR"/Backups/jellyfin-config-backup.tar jellyfin-config-backup/
#rm -rf jellyfin-config-backup/
docker stop nginx
sudo tar -cf "$DEST_DIR"/Backups/npm.tar bkifin/data/ bkifin/letsencrypt/
#docker stop uptimekuma
#sudo tar -cf "$DEST_DIR"/Backups/uptimekuma.tar bkifin/uptime-kuma/
docker stop qbittorrent
sudo tar -cf "$DEST_DIR"/Backups/qbittorrent.tar bkifin/qbittorrent/

cp -R "$SRC_DIR"/promtail/promtail-config.yaml "$DEST_DIR"
cp -R "$SRC_DIR"/loki/loki-config.yaml "$DEST_DIR"

cd ~/"$DEST_DIR"/
git add .
git commit -m "Backup"
git push

cd ~/bkifin/
make
