FROM postgres:15

# Install TimescaleDB extension
RUN apt-get update && apt-get install -y \
    postgresql-15-timescaledb-2 \
    && rm -rf /var/lib/apt/lists/*

# Copy initialization scripts
COPY init.sql /docker-entrypoint-initdb.d/
COPY timescale.sql /docker-entrypoint-initdb.d/

# Set environment variables
ENV POSTGRES_USER=trading
ENV POSTGRES_PASSWORD=securepass
ENV POSTGRES_DB=miniexchange
