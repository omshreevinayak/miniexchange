# MiniExchange

**India's first open-source, production-grade low-latency trading engine.**

[![C++](https://img.shields.io/badge/C++-20-blue)](https://isocpp.org/)
[![License](https://img.shields.io/badge/License-Apache%202.0-green)](LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/omshreevinayak/miniexchange)](https://github.com/omshreevinayak/miniexchange/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/omshreevinayak/miniexchange)](https://github.com/omshreevinayak/miniexchange/issues)

---

## 🚀 What is MiniExchange?

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
