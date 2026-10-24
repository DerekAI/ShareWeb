#!/bin/bash
# 局域网文件共享服务，轻量、临时、小并发，基于python http.server
set -e

# ========= 这里设定共享目录、端口 =========
SHARE_DIR="$HOME/share"
PORT=8000
# ==========================================

# 若设定目录不存在，则创建用于共享的文件夹
mkdir -p "$SHARE_DIR"

# 获取本机内网IP（只拿第一个内网地址）
LAN_IP=$(hostname -I | awk '{print $1}')

echo "====================================="
echo "📂 Share Directory: $SHARE_DIR"
echo "🌐 Visit URL: http://$LAN_IP:$PORT"
echo "⏹️  Stop Web Service: Ctrl + C"
echo "====================================="
echo ""
cd "$SHARE_DIR"
python3 -m http.server "$PORT"
