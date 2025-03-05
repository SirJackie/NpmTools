@echo off

chcp 65001
cls

echo "---------- LOCAL_REBUILD ----------"
echo "确保你有：package.json + wheels文件夹"
echo "请把这两个东西放在NPM_LOCAL_REBUILD.bat同一个目录下"
echo "准备好了，按任意键开始重建..."
pause > nul

echo "---------- LOCAL_REBUILD ----------"
echo "正在重建中..."

npm install --offline --cache=.\wheels

echo "---------- LOCAL_REBUILD ----------"
echo "重建完成，建好的环境路径为：./node_modules/"
echo "按任意键退出程序..."
pause > nul
exit
