## PHP Deploy
本项目采用最新的 ~~php:fpm-stretch~~  `php:fpm` 为基础镜像

> ~~为什么 `php:fpm-stretch`~~

~~因为ISSUE: `configure: error: freetype-config not found.`  [Learn More](https://github.com/docker-library/php/issues/865#issuecomment-511140588)~~

ISSUE已经修复,现在使用的是 `php:fpm`镜像,本次更改已经通过测试,成功构建.
## Tips
1. 如果要开启性能追踪调试 请在构建容器时候加上 `SYS_PTRACE` 权限
2. 本项目仅构建PHP镜像,不包含其他镜像(如:Nginx,MySQL,etc..).如需配合其他镜像一起使用请分别单独构建,然后通过 [network](https://docs.docker.com/network/bridge/) 连接使用
3. 如果出现`Failed loading /usr/local/lib/php/extensions/...`,请修改配置文件到正确路径.可能出现问题的是`xdebug`

## PHP Extends
可以根据自己的业务自行调整
- gd
- opcache
- exif
- pdo_pgsql
- pdo_mysql
- bcmath
- zip
- redis
- mcrypt
- swoole
- seaslog
- xdebug

## php -v output
date: Fri May  8 03:05:03 UTC 2020
```
PHP 7.4.5 (cli) (built: May  6 2020 21:31:53) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.5, Copyright (c), by Zend Technologies
    with Xdebug v2.9.5, Copyright (c) 2002-2020, by Derick Rethans

```
## php -m output
```
[PHP Modules]
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
xdebug
xml
xmlreader
xmlwriter
Zend OPcache
zip
zlib

[Zend Modules]
Xdebug
Zend OPcache
```