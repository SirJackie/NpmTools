# Npm 实现离线安装 下载本地离线包

## 一、单个工程

### 1. 提取 `package.json`

```
npm list --depth=0 --json > package.json
```

### 2. 下载离线安装包

> 注意！下载离线安装包之前，**必须先删除 `package-lock.json`**，否则提取缺失不齐全！

1. 确保目录下存在 `package.json`
2. 删除目录中的 `node_modules` 文件夹
3. 执行命令（含义：根据 `package.json` 重建 `node_modules`，同时缓存到 `wheels` 中）：

```
npm install --online --cache=.\wheels
```

### 3. 实现离线包安装

1. 确保目录下存在 `package.json` 和 `wheels` 文件夹
2. 执行命令（含义：根据 `package.json`，和 `wheels` 中的缓存，重建 `node_modules`）：

```
npm install --offline --cache=.\wheels
```

## 二、全局环境

### 1. 提取 `package.json`

```
npm list -g --depth=0 --json > package.json
```

### 2. 下载离线安装包

1. 确保目录下存在 `package.json`
2. 删除目录中的 `node_modules` 文件夹
3. 执行命令（含义：根据 `package.json` 重建 `node_modules`，同时缓存到 `wheels` 中）：

```
npm install -g package.json --online --cache=.\wheels
```

### 3. 实现离线包安装

1. 确保目录下存在 `package.json` 和 `wheels` 文件夹
2. 执行命令（含义：根据 `package.json`，和 `wheels` 中的缓存，重建 `node_modules`）：

```
npm install -g package.json --offline --cache=.\wheels
```

## 三、附加：创建Vue工程

```
create-vue VueTest
cd VueTest
npm install
npm run dev
```

## 参考文献

```
https://blog.miniasp.com/post/2018/06/16/Offline-installation-of-npm-packages-for-Enterprise
```

