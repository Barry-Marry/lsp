#!/bin/bash
# 检查是否安装了 zip 命令
if ! command -v zip &> /dev/null; then
    echo "错误: 请先安装 zip 工具 (pacman -S zip)"
    exit 1
fi

cd magisk_module
zip -r ../lsp_root_tools_v1.0.zip ./*
cd ..
echo "[OK] 模块已打包: lsp_root_tools_v1.0.zip"
