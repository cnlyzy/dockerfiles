## FRP
> frp 是一个可用于内网穿透的高性能的反向代理应用，支持 tcp, udp 协议，为 http 和 https 应用协议提供了额外的能力，且尝试性支持了点对点穿透。

本项目采用 `docker-compose` 部署`frps`和`frpc`使其更加便捷和安全.

## How to deploy
1. 先去FRP [官网下载](https://github.com/fatedier/frp/releases) `linux_amd64`压缩包,解压并提取二进制包,分别放入frps和frpc目录
2. 编辑好frps和frpc的配置文件 && docker-compose.yml 相应的配置
3. 把frps和frpc目录分别拷贝到相应的机器上,然后在其目录执行 ```docker-compose up -d``` 即可
4. 服务器防火墙放行相应端口

enjoy