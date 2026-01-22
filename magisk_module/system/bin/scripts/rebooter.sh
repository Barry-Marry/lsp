#!/system/bin/sh
echo "选择重启模式: 1) 正常重启 2) 恢复模式(Recovery) 3) 引导模式(Bootloader)"
read -r target
case $target in
    1) reboot ;;
    2) reboot recovery ;;
    3) reboot bootloader ;;
    *) echo "取消操作。" ;;
esac
