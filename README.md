# Advanced Clock Generation and Distribution Network

This project implements a comprehensive clocking architecture for multi-GHz SoC systems. It features clock generation, glitch-free switching, phase interpolation, power-aware gating, and robust clock domain crossing (CDC) protocols. All modules are written in Verilog HDL and are verified with testbenches.

---

## 🚀 Features

- **Multi-source Clock Generation**
  - PVT-compensated Ring Oscillator
  - Support for external PLL/DLL integration

- **Clock Multiplexing & Switching**
  - Glitch-free 2-to-1 clock multiplexer with reset control

- **Fine-Grained Phase Control**
  - 6-bit Phase Interpolator (64 phase steps)

- **Clock Gating & Power Optimization**
  - Latch-based clock gating logic

- **Safe Clock Domain Crossing (CDC)**
  - 2-stage synchronizer circuit
  - CDC FIFO shell for asynchronous interfaces

---

---

## 🧪 Simulation Setup

### ✅ Requirements
- [Icarus Verilog](http://iverilog.icarus.com)
- [GTKWave](http://gtkwave.sourceforge.net/)

### 🔁 Run All Testbenches

```bash
make           # Run all simulations
make clean     # Clean generated files
gtkwave waveforms/ring_oscillator.vcd

