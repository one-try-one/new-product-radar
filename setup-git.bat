@echo off
chcp 65001 >nul
echo ========================================
echo   新品调研日报 - Git 初始化
echo ========================================
echo.

cd /d D:\work\Claude\kaipiao\new-product-radar

echo [1/4] 初始化 Git 仓库...
git init

echo [2/4] 设置远程仓库...
git remote add origin https://github.com/one-try-one/new-product-radar.git

echo [3/4] 设置凭据（供后续自动 push 使用）...
git config user.name "one-try-one"
git config user.email "one-try-one@users.noreply.github.com"
git config credential.helper store

echo [4/4] 配置完成！
echo.
echo ========================================
echo  下一步：运行 push-daily.bat 首次推送
echo ========================================
pause
