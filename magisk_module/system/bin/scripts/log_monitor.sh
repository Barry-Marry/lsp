#!/system/bin/sh
# 实时监控 LSPosed 和 Root 相关的报错日志

TAG="LSPosed"
FILTER="Error|Exception|Fail"

echo "[*] 开始实时监控关键字: $FILTER"
echo "[*] 按 Ctrl+C 停止监控"

# 使用 logcat 捕获缓冲区，并实时高亮过滤结果
logcat -b all -v color | grep -iE "$FILTER|$TAG"
