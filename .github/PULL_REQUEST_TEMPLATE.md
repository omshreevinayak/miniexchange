## 📌 What does this PR do?
This PR introduces the foundational project structure for the **MiniExchange** engine and adds the `FixedPoint` math class to handle price calculations without floating-point errors.

## 🧠 Why is this change needed?
- Floating-point (`double`) is non-deterministic and slower for comparisons.
- Trading requires precise decimal arithmetic (e.g., `100.50`).
- This introduces `FixedPoint` (scaled `int64_t`) to ensure **microsecond-speed** price matching.

## 🛠️ How has this been tested?
- Compiled locally with `g++ -std=c++20`.
- Static assertions ensure `Order` struct is exactly 64 bytes (one cache line).
- *(Add more details here if you wrote unit tests)*

## ✅ Checklist
- [x] Code compiles without errors
- [x] Added `alignas(64)` to critical structs
- [x] Added static_assert for size validation

## 📸 Visual Proof (Screenshot)
<!-- Drag and drop an image below to show the compiler output or structure size -->
![Screenshot_2026-06-29_11-13-47.png](../../../Pictures/Screenshots/Screenshot_2026-06-29_11-13-47.png)

## 🔗 Related Issues
Closes #1 *(Change this to the Issue number you opened)*