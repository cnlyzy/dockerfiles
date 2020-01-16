# caddy docker

## 如何使用
1. 在[caddy release](https://github.com/caddyserver/caddy/releases)页面下载系统对应版本的包,例如`caddy_v1.0.4_linux_amd64.tar.gz`.
2. 解压并复制`caddy`文件到`dist`目录替换文件
3. 根据自己需求改好conf目录`Caddyfile`文件
4. 在当前目录执行`docker-compose -p caddy up -d`
5. 稍等片刻看到Creating caddy ... done即表示成功构建
