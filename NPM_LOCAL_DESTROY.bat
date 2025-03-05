@echo off

chcp 65001
cls

echo "---------- LOCAL_DESTROY ----------"
echo "该程序可以销毁本目录下node_modules环境，减少磁盘碎片化，方便拷贝"
echo "准备好了，按任意键开始销毁..."
pause > nul

echo "---------- LOCAL_DESTROY ----------"
echo "正在销毁中..."

rmdir /S /Q .\node_modules

echo "---------- LOCAL_FINISHED ----------"
echo "销毁成功"
echo "按任意键退出程序..."
pause > nul
exit
