#!/system/bin/sh
# 高级隐藏脚本：动态清理挂载痕迹

echo "[*] 启动隐身模式..."

# 1. 查找所有包含 magisk 的挂载点
grep "magisk" /proc/self/mounts | cut -d' ' -f2 | while read -r line; do
    echo "[-] 正在卸载敏感挂载点: $line"
    umount -l "$line"
done

# 2. 修改关键特征码
# 混淆设备指纹
resetprop ro.build.type user
resetprop ro.build.selinux 1
resetprop ro.debuggable 0

# 3. 杀掉可能存在的检测进程
for app in "com.topjohnwu.magisk" "org.meowcat.edxposed.manager" "org.lsposed.manager"; do
    am force-stop "$app" 2>/dev/null
    echo "[!] 已强制停止可能被扫描的管理器: $app"
done

echo "[OK] 隐身操作执行完毕。"
