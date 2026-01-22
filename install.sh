#!/system/bin/sh
echo "[*] 正在安装 LSP Root Tools..."
su -c "mount -o rw,remount /system && cp ./scripts/system_mod_backup.sh /system/bin/lsp-tool && chmod 755 /system/bin/lsp-tool"
