# 🚦 Traffic Light Controller (FSM - Verilog)

## 📌 Description

This project implements a **Traffic Light Controller** using **Verilog HDL** based on a **Finite State Machine (FSM)** approach with **mixed modeling (structural + behavioral)**.

The controller cycles through:

* 🔴 RED
* 🟢 GREEN
* 🟡 YELLOW

State transitions depend on an external input `x` and follow a defined sequence.

---

## ⚙️ Design Approach

This design uses **Mixed Modeling**:

* **Structural Modeling** → D Flip-Flop instantiation
* **Behavioral Modeling** → Next-state logic using `always` block

---

## 🧠 State Encoding

| State  | Qa Qb |
| ------ | ----- |
| RED    | 00    |
| GREEN  | 01    |
| YELLOW | 10    |

---

## 🔄 State Transition Logic

* **RED (00)**
  → stays in RED if `x = 0`
  → moves to GREEN if `x = 1`

* **GREEN (01)**
  → always moves to YELLOW

* **YELLOW (10)**
  → always moves to RED

---

## 📥 Inputs

* `clk` → Clock signal
* `reset` → Reset signal
* `x` → Control input (decision signal)

---

## 📤 Outputs

* `Qa`, `Qb` → Encoded state outputs

---

## 📂 Project Structure

```
Traffic-Light-Controller/
│
├── traffic_light_controller.v
├── traffic_light_tb.v
├── constraints.xdc
├── screenshots/
│     └── waveform.png
└── README.md
```

---

## 🧪 Simulation

Simulation verifies correct FSM transitions.

![Waveform](screenshots/waveform.png)

---

## 🛠️ Tools & Hardware Used

* Verilog HDL
* Xilinx Vivado
* Nexys Artix-7 50T FPGA Board

---

## ⚡ FPGA Implementation

The design is synthesized and implemented on:

* **Nexys Artix-7 50T FPGA Kit**

### Implementation Steps:

1. Add Verilog source in Vivado
2. Add constraints (`.xdc`) for I/O mapping
3. Run:

   * Synthesis
   * Implementation
   * Bitstream Generation
4. Program FPGA

---

## 🔮 Future Improvements

* Add timer-based automatic transitions
* Expand to 4-way traffic system
* Integrate pedestrian signals
* Use counters for real-time delays

---

## 👨‍💻 Author

**Samarth Deshpande**
BTech Electronics (VLSI Design & Technology)

---

## 📎 License

Open-source for educational use.
