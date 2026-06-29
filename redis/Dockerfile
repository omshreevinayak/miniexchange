FROM redis:7-alpine

# Copy custom configuration
COPY redis.conf /usr/local/etc/redis/redis.conf

# Start Redis with the config
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]