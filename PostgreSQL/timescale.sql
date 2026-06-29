-- Convert market_ticks to a hypertable for time-series optimization
SELECT create_hypertable('market_ticks', 'time', chunk_time_interval => INTERVAL '1 day');