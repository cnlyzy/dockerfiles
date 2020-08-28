# see more https://hellosean1025.github.io/yapi/devops/index.html#%e5%ae%89%e8%a3%85
# clone
mkdir yapi
cd yapi
git clone https://github.com/YMFE/yapi.git vendors
# 或者下载 zip 包解压到 vendors 目录（clone 整个仓库大概 140+ M，可以通过 `git clone --depth=1 https://github.com/YMFE/yapi.git vendors` 命令减少，大概 10+ M）
# cp vendors/config_example.json ./config.json 
mv ../config.json ./config.json
# 复制完成后请修改相关配置
# cd vendors


docker-compose up -d