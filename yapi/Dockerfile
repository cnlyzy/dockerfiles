#选择node镜像版本
FROM node:alpine
RUN apk add --no-cache git python make openssl tar gcc
# 将当前目录添加到镜像
ADD ./yapi/vendors /yapi/vendors
ADD ./yapi/config.json /yapi/config.json
# 选择工作区为vendors
WORKDIR /yapi/vendors
#安装依赖,运行初始化
RUN npm install --production --registry https://registry.npm.taobao.org
RUN npm run install-server 
#暴露端口
EXPOSE 3000
#程序启动脚本
CMD ["npm", "start"]