#!/system/bin/sh
# 等待系统完全进入桌面
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 5
done

# 开机自动执行：优化 TCP 拥塞控制
sysctl -w net.ipv4.tcp_congestion_control=bbr

# 开机自动执行：清理旧的快照（保留最近 7 天）
find /sdcard/ -name "Snapshot_*.tar.gz" -mtime +7 -exec rm {} \;
