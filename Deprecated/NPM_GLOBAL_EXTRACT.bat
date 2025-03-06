@echo off

chcp 65001
cls

echo "---------- GLOBAL_EXTRACT ----------"
echo "该程序可以提取全局Node.js环境中，所有依赖包的离线安装包，方便无网部署"
echo "准备好了，按任意键开始提取..."
pause > nul

echo "---------- GLOBAL_EXTRACT ----------"
echo "正在提取中..."

call npm list -g --depth=0 --json > package.json
call npm install -g package.json --online --cache=.\wheels

echo "---------- GLOBAL_FINISHED ----------"
echo "提取产物：package.json + wheels文件夹"
echo "请把这两个东西保存好，可以用来重建全局Node.js环境"
echo "按任意键退出程序..."
pause > nul
exit
