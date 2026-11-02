@echo off
chcp 65001 >nul
title 优化工具
echo.
echo --------------------------------
echo   欢迎使用优化工具
echo   是否进行优化？
echo --------------------------------
echo.
:ask_confirm
set /p userInput=请输入 Y 继续，或 N 取消：
if /i "%userInput%"=="Y" goto continue
if /i "%userInput%"=="N" goto exit_early
echo 请输入 Y 或 N。
goto ask_confirm

:continue
echo.
echo 正在优化，请稍等...
timeout /t 2 >nul
start "" "https://www.bilibili.com/video/BV1GJ411x7h7"
exit

:exit_early
echo.
echo 已为你取消操作。按任意键退出...
pause >nul
exit