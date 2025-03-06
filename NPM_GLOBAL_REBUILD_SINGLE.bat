@echo off

chcp 65001
cls

echo "---------- GLOBAL_REBUILD_SINGLE ----------"
echo "确保你有：wheels文件夹"
echo "请把它放在NPM_GLOBAL_REBUILD.bat同一个目录下"
set /p input=请输入你要重建的NPM包：

echo "---------- GLOBAL_REBUILD_SINGLE ----------"
echo "正在重建中..."

call npm install -g %input% --offline --cache=.\wheels

echo "---------- GLOBAL_FINISHED_SINGLE ----------"
echo "重建全局Node.js环境完成"
echo "按任意键退出程序..."
pause > nul
exit
