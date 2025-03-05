@echo off

chcp 65001
cls

echo "---------- LOCAL_EXTRACT ----------"
echo "该程序可以根据package.json，提取所有依赖包的离线安装包，方便无网部署"
echo "准备好了，按任意键开始提取..."
pause > nul

echo "---------- LOCAL_EXTRACT ----------"
echo "正在提取中..."

rmdir /S /Q .\node_modules
npm install --online --cache=.\wheels

echo "---------- LOCAL_FINISHED ----------"
echo "提取产物：wheels文件夹"
echo "请把它保存好，可以用来重建node_modules环境"
echo "按任意键退出程序..."
pause > nul
exit
