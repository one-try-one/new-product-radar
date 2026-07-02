@echo off
chcp 65001 >nul
echo ========================================
echo   新品调研日报 - 推送到 GitHub
echo ========================================
echo.

cd /d D:\work\Claude\kaipiao\new-product-radar

echo [1/3] 添加所有文件...
git add -A

echo [2/3] 提交...
REM 检查是否有变更
git diff --cached --quiet
if %errorlevel% equ 0 (
    echo 没有变更，跳过推送。
    goto :end
)
git commit -m "更新新品日报 - %date%"

echo [3/3] 推送到 GitHub...
set GH_TOKEN=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
git push -u https://%GH_TOKEN%@github.com/one-try-one/new-product-radar.git main

:end
echo.
echo 完成！
echo 访问 https://one-try-one.github.io/new-product-radar/
pause
