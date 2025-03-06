@echo off

chcp 65001
cls

echo "---------- GLOBAL_EXTRACT_SINGLE ----------"
echo "该程序可以提取全局Node.js环境中，所有依赖包的离线安装包，方便无网部署"
set /p input=请输入你要提取的NPM包：

echo "---------- GLOBAL_EXTRACT_SINGLE ----------"
echo "正在提取中..."

call npm install -g %input% --online --cache=.\wheels

echo "---------- GLOBAL_FINISHED_SINGLE ----------"
echo "提取产物：wheels文件夹"
echo "请把它保存好，可以用来重建全局Node.js环境"
echo "按任意键退出程序..."
pause > nul
exit
