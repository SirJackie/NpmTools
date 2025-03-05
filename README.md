# NpmTools

A Npm Offline Packages Management Toolset.

## 解决了什么痛点？

- 当我们的计算机无法联网时（例如公司内网），配置Npm依赖包变得极为困难
- 网络上缺乏该类型的资料，使得解决改问题需要许多不必要的寻找时间
- 我通过自行尝试，并使用虚拟机断网验证可行性，确定出了一套较稳定的自动程序，成功实现了便捷的Npm包离线保存和恢复安装。只需要运行程序，就能帮助您轻松迁移！

## 功能介绍

工具集一共包含五个程序，是互相独立的，都可以单独运行：

- `NPM_LOCAL_EXTRACT.bat`：提取Npm**工程**环境的全量安装包
- `NPM_LOCAL_REBUILD.bat`：使用全量安装包，重建Npm**工程**环境
- `NPM_LOCAL_DESTROY.bat`：销毁当前目录下Npm工程环境
- `NPM_GLOBAL_EXTRACT.bat`：提取Npm**全局**环境的全量安装包
- `NPM_GLOBAL_REBUILD.bat`：使用全量安装包，重建Npm**全局**环境

