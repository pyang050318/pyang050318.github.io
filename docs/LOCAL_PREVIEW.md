# Windows 本地预览

本项目已配置 Jekyll 热更新预览。建议在本地完成全部内容和样式修改，确认无误后再一次性上传到 GitHub。

## 首次准备

1. 安装 [Docker Desktop](https://www.docker.com/products/docker-desktop/)。
2. 启动 Docker Desktop，等待状态显示为正在运行。
3. 双击项目中的 `bin/preview.cmd`。

首次启动会下载一次 al-folio 预览环境，因此所需时间取决于网络；下载完成后，以后的启动会快很多。

## 日常使用

1. 双击 `bin/preview.cmd`。
2. 脚本会自动打开 <http://127.0.0.1:8080/>。
3. 修改并保存 `_pages/about.md`、`_config.yml` 等文件。
4. Jekyll 会重新生成页面，浏览器随后自动刷新。
5. 完成预览后，双击 `bin/preview-stop.cmd`。

如果希望查看实时构建日志，可以在 PowerShell 中运行：

```powershell
.\bin\preview.cmd -Logs
```

如果端口 `8080` 已被其他程序占用，请先关闭占用该端口的程序，再重新启动预览。
