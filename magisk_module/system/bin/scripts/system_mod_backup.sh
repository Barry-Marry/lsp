#!/system/bin/sh
BACKUP_DIR="/sdcard/LSP_Backup_$(date +%Y%m%d)"
echo "[*] 正在备份系统文件到: $BACKUP_DIR"
mkdir -p "$BACKUP_DIR"
cp /system/build.prop "$BACKUP_DIR/"
echo "[OK] 备份完成。"
