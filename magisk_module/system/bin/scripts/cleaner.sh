#!/system/bin/sh
echo "[*] 正在清理系统缓存与无用日志..."
rm -rf /data/cache/*
rm -rf /data/anr/*
rm -rf /data/tombstones/*
echo "[OK] 清理完成。"
