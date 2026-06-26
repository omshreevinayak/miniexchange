# MiniExchange

**India's first open-source, production-grade low-latency trading engine.**

[![C++](https://img.shields.io/badge/C++-20-blue)](https://isocpp.org/)
[![License](https://img.shields.io/badge/License-Apache%202.0-green)](LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/omshreevinayak/miniexchange)](https://github.com/omshreevinayak/miniexchange/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/omshreevinayak/miniexchange)](https://github.com/omshreevinayak/miniexchange/issues)

---

## <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Symbols/New%20Button.png" alt="New Button" width="25" height="25" /> Status: 
**Early Development** — Core engine design in progress. First working version (order book + matching) expected by July 2026.

---

## 🎯 Vision

To build **India's first open-source trading infrastructure**—a modular, high-performance engine that can be forked for security, AI, or embedded use cases (Ubuntu → Kali → Pop!_OS model).

---

## <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Travel%20and%20places/Rocket.png" alt="Rocket" width="25" height="25" /> What is MiniExchange?

MiniExchange is a **production-grade, low-latency trading engine** built from scratch in **C++20**. It is designed to process buy/sell orders with **microsecond latency** using lock-free data structures, custom memory pools, and epoll networking.

**This is not a toy project. This is India's first open-source trading infrastructure.**

---

## 🏗️ Architecture

```mermaid
graph TD
    A[React Dashboard] --> B[Backend API Node.js]
    B --> C[PostgreSQL + TimescaleDB]
    B --> D[Redis Cache]
    D --> E[AeroMatch C++ Engine]
    E --> F[LogZero Logger]
    E --> G[DataFlow Feed Handler]
    G --> H[Binance/Coinbase/Kraken WebSocket]
```

# 1. Clone the repository
```text 
clone https://github.com/omshreevinayak/miniexchange.git
```

```text 
cd miniexchange
```

# 2. Start everything with one command
```text 
ocker-compose up -d
```

# 3. Access the dashboard
```text 
open http://localhost:3001
```

# 4. View API documentation
```text 
open http://localhost:3000/api/docs
```
