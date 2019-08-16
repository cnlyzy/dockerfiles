## PHP Deploy
本项目采用最新的 `php:fpm-stretch` 为基础镜像

> 为什么 `php:fpm-stretch`

因为ISSUE: `configure: error: freetype-config not found.`  [Learn More](https://github.com/docker-library/php/issues/865#issuecomment-511140588)

## Tips
1. 如果要开启性能追踪调试 请在构建容器时候加上 `SYS_PTRACE` 权限
2. 本项目仅构建PHP镜像,不包含其他镜像(如:Nginx,MySQL,ETC).如需配合其他镜像一起使用请分别单独构建,然后通过 [network](https://docs.docker.com/network/bridge/) 连接使用

## PHP Extends
可以根据自己的业务自行调整
- gd
- opcache
- exif
- pdo_pgsql
- pdo_mysql
- bcmath
- redis
- mcrypt(废弃)
- swoole
- seaslog

## php -m  output
> [PHP Modules]
bcmath
Core
ctype
curl
date
dom
exif
fileinfo
filter
ftp
gd
hash
iconv
json
libxml
mbstring
mcrypt
mysqlnd
openssl
pcre
PDO
pdo_mysql
pdo_pgsql
pdo_sqlite
Phar
posix
readline
redis
Reflection
SeasLog
session
SimpleXML
sodium
SPL
sqlite3
standard
swoole
tokenizer
xml
xmlreader
xmlwriter
Zend OPcache
zlib
[Zend Modules]
Zend OPcache
