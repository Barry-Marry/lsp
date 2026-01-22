#!/system/bin/sh

# 定义颜色，让界面更好看
BLUE='\033[0;34m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

while true; do
    clear
    echo "${BLUE}======================================${NC}"
    echo "${GREEN}      LSP Root 工具箱 - 总控制台      ${NC}"
    echo "${BLUE}======================================${NC}"
    echo " 1) 备份系统文件 (Backup)"
    echo " 2) 开启隐身模式 (Stealth Mode)"
    echo " 3) 实时监控日志 (Log Monitor)"
    echo " 4) 卸载/清理工具 (Uninstall)"
    echo " q) 退出脚本 (Exit)"
    echo "${BLUE}--------------------------------------${NC}"
    printf "请选择操作 [1-q]: "
    read opt

    case $opt in
        1)
            sh ./scripts/system_mod_backup.sh
            ;;
        2)
            sh ./scripts/stealth_mode.sh
            ;;
        3)
            sh ./scripts/log_monitor.sh
            ;;
        4)
            echo "${RED}[!] 正在清理系统文件...${NC}"
            su -c "rm /system/bin/lsp-tool"
            echo "[OK] 已卸载。"
            ;;
        q|Q)
            echo "退出中..."
            break
            ;;
        *)
            echo "${RED}无效选项，请重新输入...${NC}"
            sleep 1
            ;;
    esac
    echo "\n按任意键返回菜单..."
    read pause
done
