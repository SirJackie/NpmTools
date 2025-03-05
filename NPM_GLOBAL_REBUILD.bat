@echo off

chcp 65001
cls

echo "---------- GLOBAL_REBUILD ----------"
echo "确保你有：package.json + wheels文件夹"
echo "请把这两个东西放在NPM_GLOBAL_REBUILD.bat同一个目录下"
echo "准备好了，按任意键开始重建..."
pause > nul

echo "---------- GLOBAL_REBUILD ----------"
echo "正在重建中..."

npm install -g package.json --offline --cache=.\wheels

echo "---------- GLOBAL_FINISHED ----------"
echo "重建全局Node.js环境完成"
echo "按任意键退出程序..."
pause > nul
exit
