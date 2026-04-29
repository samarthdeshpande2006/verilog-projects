# 🔬 VLSI Switch-Level Verilog Project

## 📌 Description

This repository contains **switch-level Verilog implementations** of fundamental digital circuits using **CMOS (PMOS & NMOS)** design.

The project is based on laboratory experiments including:

* Switch-level inverter
* CMOS-based ALU / CLA logic
* SR Flip-Flop
* T Flip-Flop

Each circuit is verified using simulation waveforms and implemented using FPGA tools.

---

## ⚙️ Design Methodology

* **Switch-Level Modeling**

  * Direct use of `pmos` and `nmos`
  * Explicit power supplies: `supply1 (Vdd)` and `supply0 (Gnd)`

* **Mixed Structural Design**

  * Basic gates → Built using CMOS
  * Sequential circuits → Built using gate-level logic

---

## 🧪 Experiments Included

### 🔹 1. CMOS Inverter

* Basic NOT gate using PMOS and NMOS
* Demonstrates complementary switching behavior

---

### 🔹 2. CLA / ALU (Switch-Level Logic)

* Implementation of logic operations:

  * AND
  * OR
  * XOR
  * ADD (Half Adder concept)
* Built using CMOS gate combinations

---

### 🔹 3. SR Flip-Flop

* Implemented using cross-coupled CMOS NAND gates
* Demonstrates latch behavior and memory

---

### 🔹 4. T Flip-Flop

* Toggle flip-flop using XOR-based feedback
* Shows state toggling on clock input

---

## 📂 Project Structure

```id="o9g5dx"
VLSI-Switch-Level-Lab/
│
├── Inverter/
│    ├── inverter.v
│    └── inverter_tb.v
│
├── ALU/
│    ├── alu_1bit.v
│    ├── xor_cmos.v
│    ├── and_cmos.v
│    ├── or_cmos.v
│    └── alu_tb.v
│
├── SR-FlipFlop/
│    ├── sr_ff.v
│    └── sr_tb.v
│
├── T-FlipFlop/
│    ├── t_ff.v
│    └── t_tb.v
│
├── switch level simulations.pdf
└── README.md
```

---

## 🖼️ Simulation Results

The outputs match expected waveforms from the lab manual:

* Switch inverter waveform
* ALU operation outputs
* SR Flip-Flop state transitions
* T Flip-Flop toggling behavior

---

## 🛠️ Tools & Hardware Used

* Verilog HDL (Switch-Level Modeling)
* Xilinx Vivado
* Nexys Artix-7 50T FPGA Kit

---

## ⚡ FPGA Implementation

Each module can be:

1. Synthesized in Vivado
2. Mapped using `.xdc` constraints
3. Implemented on Nexys Artix-7 FPGA

---

## 🔍 Key Concepts Demonstrated

* CMOS logic design
* Transistor-level modeling
* Sequential circuit behavior
* FSM and latch concepts
* Hardware implementation workflow

---

## 🚀 Learning Outcomes

* Understanding of PMOS/NMOS behavior
* Ability to design circuits at switch level
* Simulation and waveform verification
* FPGA-based implementation

---

## 👨‍💻 Author

**Samarth Deshpande**
BTech Electronics (VLSI Design & Technology)

---

## 📎 License

This project is intended for educational and academic purposes.
