docker run -d --name=redis --restart=always -p 6379:6379 -v /data/redis:/data redis redis-server --appendonly yes --requirepass "xxx"