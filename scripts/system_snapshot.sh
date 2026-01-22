#!/system/bin/sh

# 定义快照存储路径
SNAP_DIR="/sdcard/LSP_Snapshot_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$SNAP_DIR"

echo "[*] 正在生成系统快照..."

# 1. 备份 build.prop (系统属性)
cp /system/build.prop "$SNAP_DIR/"

# 2. 导出已安装应用包名列表
pm list packages > "$SNAP_DIR/apps_list.txt"

# 3. 记录当前的挂载状态 (检查是否有异常挂载)
mount > "$SNAP_DIR/mount_status.txt"

# 4. 获取当前所有系统属性值
getprop > "$SNAP_DIR/all_properties.txt"

# 5. 压缩快照文件
cd /sdcard
tar -czf "Snapshot_$(date +%Y%m%d).tar.gz" "$(basename $SNAP_DIR)"
rm -rf "$SNAP_DIR"

echo "[OK] 系统快照已保存为: /sdcard/Snapshot_$(date +%Y%m%d).tar.gz"
