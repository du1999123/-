@echo off
echo ========================================
echo Silly Tavern Character Tracker Plugin
echo ========================================
echo.
echo 正在安装插件依赖...
echo.

REM 检查Node.js是否安装
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo 错误: 未检测到Node.js
    echo 请先安装Node.js: https://nodejs.org/
    pause
    exit /b 1
)

echo Node.js版本: 
node --version
echo.

REM 安装依赖
echo 正在安装npm依赖...
npm install
if %errorlevel% neq 0 (
    echo 错误: 依赖安装失败
    pause
    exit /b 1
)

echo.
echo 正在构建插件...
npm run build
if %errorlevel% neq 0 (
    echo 错误: 构建失败
    pause
    exit /b 1
)

echo.
echo ========================================
echo 插件构建完成！
echo ========================================
echo.
echo 下一步操作:
echo 1. 将整个插件文件夹复制到Silly Tavern的 public/plugins/ 目录
echo 2. 重启Silly Tavern
echo 3. 在菜单中查找 "👥 Character Tracker" 按钮
echo.
echo 如果遇到问题，请查看README.md文件
echo.
pause 