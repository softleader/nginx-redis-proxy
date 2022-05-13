# nginx-redis-proxy
Nginx as reverse proxy using Redis

```sh
# Start nginx and redis
docker compose up -d --build

# Connect to Nginx using Redis cli
redis-cli -h localhost -p 16379
```
