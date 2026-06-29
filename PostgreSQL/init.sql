-- Users table (for authentication)
CREATE TABLE IF NOT EXISTS users (
                                     id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    username TEXT UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password_hash TEXT NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
    );

-- Trades table (ACID compliant)
CREATE TABLE IF NOT EXISTS trades (
                                      id BIGSERIAL PRIMARY KEY,
                                      buy_order_id BIGINT NOT NULL,
                                      sell_order_id BIGINT NOT NULL,
                                      price DECIMAL(20,8) NOT NULL,
    quantity DECIMAL(20,8) NOT NULL,
    traded_at TIMESTAMPTZ DEFAULT NOW()
    );

-- Market data ticks (time-series data, using TimescaleDB)
CREATE TABLE IF NOT EXISTS market_ticks (
                                            time TIMESTAMPTZ NOT NULL,
                                            symbol TEXT NOT NULL,
                                            price DECIMAL(20,8) NOT NULL,
    volume DECIMAL(20,8) NOT NULL,
    exchange TEXT NOT NULL
    );

-- Create indexes for performance
CREATE INDEX idx_trades_traded_at ON trades(traded_at DESC);
CREATE INDEX idx_market_ticks_symbol_time ON market_ticks(symbol, time DESC);