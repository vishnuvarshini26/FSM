## 🧠 What is an FSM?

A **Finite State Machine** (FSM) is a computational model used to design logic systems. It transitions through a series of states based on input values and current state conditions. FSMs are widely used in digital systems, control units, and automation.

---

## 📦 Project Structure

- `det_101.v`: Verilog module for detecting the pattern `101`.
- `tb_det_101.v`: (Optional) Testbench for simulating the design in ModelSim.
- `README.md`: Project documentation.

---

## 🔍 Pattern Detector Description

This FSM is designed to detect the sequence **`101`** in a continuous stream of serial input bits. When the FSM recognizes the complete pattern, it raises the output `out` signal high (`1`) for one clock cycle.

### ✅ Features

- Written in **Verilog HDL**
- Simulated using **ModelSim**
- Supports **overlapping** pattern detection
- Easy to modify for any other 3-bit or 4-bit pattern

---

## 🛠 Tools Used

- **Verilog HDL**: For hardware design
- **ModelSim**: For simulation and waveform analysis

---

## 🧰 Real-time Applications

FSM-based pattern detectors are used in:

- **Digital communication systems** (to detect bit sequences or control characters)
- **Serial data receivers** (detect start/stop bits, headers, footers)
- **Control systems** (e.g., elevator control, vending machines)
- **Security systems** (detect access codes or digital lock sequences)

---

## 🧩 Mealy vs. Moore Machine

### 📘 Moore Machine
- Output depends **only on the current state**
- More stable output
- Simpler timing but may require more states

### 📘 Mealy Machine
- Output depends on **current state and input**
- Faster response to input changes
- More compact state diagram

> 🧠 In this project, the design follows the **Moore machine** concept, where the output becomes high only when the FSM reaches a specific state (`S101`).

---

## 🚀 How to Simulate (Using ModelSim)

1. Open ModelSim and create a new project.
2. Add `det_101.v` and your `tb_det_101.v` testbench.
3. Compile the files.
4. Run the simulation and open the waveform to view state transitions and output detection.
