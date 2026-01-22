# 🚀 LSP Root Tools Box

基于 Bash 开发的高级安卓 Root 工具箱，现已支持作为 **Magisk 模块** 刷入。

## 🛠️ 核心功能
* **一键备份**: 自动备份 `build.prop` 等关键系统文件。
* **隐身模式**: 动态卸载 Magisk 挂载点，规避 App 检测。
* **实时监控**: 过滤系统日志，专为 LSPosed 开发者设计。
* **系统快照**: 全量导出应用列表与系统属性。
* **开机自启**: 自动优化 TCP 拥塞控制。

## 📦 如何安装
1. 运行 `./zip_module.sh` 生成刷机包。
2. 将 `LSP_Tools_v1.1.zip` 传输至手机。
3. 在 Magisk/KernelSU 管理器中选择从本地安装并重启。

## 🖥️ 使用方法
重启后在任意终端执行：
\`\`\`bash
su -c lsp-menu
\`\`\`
