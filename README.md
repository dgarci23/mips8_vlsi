# MIPS 8 bit processor

This is the semester-long project for the University of Notre Dame VLSI Design class. The project starts with some familiarization with the Cadence tools that will be used later in designing an 8 bit MIPS microprocessor. Most steps include the schematic of the design, the symbol, the layout and the extracted view. There are some steps with simulation schematics and waveform results.

## Getting Started with Virtuoso

The first step was to get used to the Virtuoso schematic editor. In this case we created a schematic for a 2 input NAND gate and a 3 input NOR gate. Both logic gates were simulated using Spectre to check their behavior.

### 2 input NAND gate

The 2 input NAND gate consists of a pull up network made of two NMOS in parallel and a pull down network made of two PMOS in series.

![nand2_sch](docs/lab1/nand2_sch.png)

The waveforms for the NAND simulations are below and are consistent with what we expect from a NAND gate.

![nand2_waveform](docs/lab1/nand2_waveforms.png)


### 3 input NOR gate

The 2 input NOR gate consists of a pull up network of 3 NMOS in series and a pull down network of 3 PMOS in parallel.

![nor3_sch](docs/lab1/nor3_sch.png)

Below are the waveforms for the NOR simulations.

![nor3_waveform](docs/lab1/nor3_waveforms.png)

## Layouts: Basic PMOS and NMOS and an inverter cell

To explore the layout tools of Virtuoso we created our own standard cells for an inverter. We will start by simulating the simple NMOS and PMOS cells.

### NMOS: schematic, symbol and IV curves

Below are the schematic, symbol and simulation schematic for the NMOS.

| ![](docs/lab2/NMOS_IV_3_sch.png) | ![](docs/lab2/sim_NMOS_IV_3_sch.png) | ![](docs/lab2/NMOS_IV_3_sym.png) |
|:--:|:--:|:--:| 
| *NMOS schematic* | *NMOS simulation schematic* | *NMOS symbol* |

| ![](docs/lab2/NMOS_IV_3_ade.png) |
|:--:| 
| *NMOS IV Curves* |

### PMOS: schematic, symbol and IV curves

Below are the schematic, symbol and simulation schematic for the PMOS.

| ![](docs/lab2/PMOS_IV_3_sch.png) | ![](docs/lab2/sim_PMOS_IV_3_sch.png) | ![](docs/lab2/PMOS_IV_3_sym.png) |
|:--:|:--:|:--:| 
| *PMOS schematic* | *PMOS simulation schematic* | *PMOS symbol* |

| ![](docs/lab2/PMOS_IV_3_ade.png) |
|:--:| 
| *PMOS IV Curves* |

### Inverter Cell

Now that we have simulated the NMOS and PMOS behavior, we continue with the inverter schematic and simulation.

| ![](docs/lab2/inv_sch.png) | ![](docs/lab2/sim_inverter_sch.png) | ![](docs/lab2/inv_sym.png) |
|:--:|:--:|:--:| 
| *Inverter schematic* | *Inverter simulation schematic* | *Inverter symbol* |

| ![](docs/lab2/inv_waveforms.png) |
|:--:| 
| *Inverter Waveforms* |

The inverter is the first cell that we will layout manually in Virtuoso.

| ![](docs/lab2/inv_lay.png) | ![](docs/lab2/inv_ext.png) |
|:--:|:--:| 
| *Inverter Layout* | *Inverter Extracted* |

## Layout Next Step: 2 input NAND gate

| ![](docs/hw2/nand2_sch.png) | 
|:--:| 
| *NAND schematic* |

| ![](docs/hw2/nand2_sym.png) |
|:--:| 
| *NAND symbol* |

| ![](docs/hw2/nand2_waveforms.png) |
|:--:| 
| *NAND Waveforms* |

| ![](docs/hw2/nand2_lay.png) | ![](docs/hw2/nand2_ext.png) |
|:--:|:--:| 
| *NAND Layout* | *NAND Extracted* |

## Advanced Logic layouts

### Part 1 Circuit

| ![](docs/lab3/adv_logic_sch.png) | 
|:--:| 
| *Schematic* |

| ![](docs/lab3/adv_logic_sym.png) |
|:--:| 
| *Symbol* |

| ![](docs/lab3/adv_logic_waveforms.png) |
|:--:| 
| *Waveforms* |

| ![](docs/lab3/adv_logic_lay.png) | ![](docs/lab3/adv_logic_ext.png) |
|:--:|:--:| 
| *Layout* | *Extracted* |

### Part 2 Circuit

| ![](docs/lab3/part2_circuit_sch.png) | 
|:--:| 
| *Schematic* |

| ![](docs/lab3/part2_circuit_sym.png) |
|:--:| 
| *Symbol* |

| ![](docs/lab3/part2_circuit_waveforms.png) |
|:--:| 
| *Waveforms* |

| ![](docs/lab3/part2_circuit_lay.png) | ![](docs/lab3/part2_circuit_ext.png) |
|:--:|:--:| 
| *Layout* | *Extracted* |

## Creating a Ring Oscillator

| ![](docs/lab4/ring_osc_sch.png) | 
|:--:| 
| *Ring Oscillator Schematic* |

| ![](docs/lab4/ring_osc_waveforms.png) | 
|:--:| 
| *Ring Oscillator Waveforms* |

| ![](docs/lab4/ring_osc_lay.png) | 
|:--:| 
| *Ring Oscillator Layout* |

| ![](docs/lab4/ring_osc_ext.png) | 
|:--:| 
| *Ring Oscillator Extract* |

## Creating a Full Adder

### PMOS and NMOS cells

| PMOS 81 | PMOS 11 | NMOS 41 | NMOS 11 |
|:--:|:--:|:--:|:--:| 
| ![](docs/lab4/pmos_81_sch.png) | ![](docs/lab4/pmos_11_sch.png) | ![](docs/lab4/nmos_41_sch.png) | ![](docs/lab4/nmos_11_sch.png) |
| ![](docs/lab4/pmos_81_sym.png) | ![](docs/lab4/pmos_11_sym.png) | ![](docs/lab4/nmos_41_sym.png) | ![](docs/lab4/nmos_11_sym.png) | 
| ![](docs/lab4/pmos_81_lay.png) | ![](docs/lab4/pmos_11_lay.png) | ![](docs/lab4/nmos_41_lay.png) | ![](docs/lab4/nmos_11_lay.png) |
| ![](docs/lab4/pmos_81_ext.png) | ![](docs/lab4/pmos_11_ext.png) | ![](docs/lab4/nmos_41_ext.png) | ![](docs/lab4/nmos_11_ext.png) |

### Putting it all together

| ![](docs/lab4/mirror_FA_sch.png) | 
|:--:| 
| *Full Adder Schematic* |

| ![](docs/lab4/mirror_FA_sym.png) | 
|:--:| 
| *Full Adder Symbol Waveforms* |

| ![](docs/lab4/sim_mirror_FA_sch.png) | 
|:--:| 
| *Full Adder Simulation Schematic* |

| ![](docs/lab4/sim_mirror_FA_waveforms.png) | 
|:--:| 
| *Full Adder Waveforms* |

| ![](docs/lab4/mirror_FA_lay.png) | 
|:--:| 
| *Full Adder Layout* |

| ![](docs/lab4/mirror_FA_ext.png) | 
|:--:| 
| *Full Adder Extract* |

## Controller and Dapapath Design

### HDL for the 8 bit processor

| ![](docs/lab5/sv_testbench_waveforms.png) | 
|:--:| 
| *SystemVerilog Testbench Results* |

| ![](docs/lab5/dut_netlist.png) | 
|:--:| 
| *DUT Netlist* |

| ![](docs/lab5/processor_netlist.png) | 
|:--:| 
| *Processor Netlist* |

| ![](docs/lab5/controller_netlist.png) | 
|:--:| 
| *Controller Netlist* |

| ![](docs/lab5/top_level_netlist.png) | 
|:--:| 
| *DUT Netlist Expanded* |


### Working on wide AND and OR gates

| ![](docs/lab5/and2_1x_8_sch.png) | ![](docs/lab5/or2_1x_8_sch.png) |
| :--: | :--: |
| ![](docs/lab5/and2_1x_8_sym.png) | ![](docs/lab5/or2_1x_8_sym.png) |
| ![](docs/lab5/and2_1x_8_lay.png) | ![](docs/lab5/or2_1x_8_lay.png) |
| ![](docs/lab5/and2_1x_8_ext.png) | ![](docs/lab5/or2_1x_8_ext.png) |

### ALU Design

| ![](docs/lab5/alu_sch.png) | 
|:--:| 
| *ALU Schematic* |

| ![](docs/lab5/alu_sym.png) | 
|:--:| 
| *ALU Waveforms* |

| ![](docs/lab5/alu_lay.png) | 
|:--:| 
| *ALU Layout* |

| ![](docs/lab5/alu_ext.png) | 
|:--:| 
| *ALU Extract* |

### Datapath

| ![](docs/lab5/datapath_sch.png) | 
|:--:| 
| *Datapath Schematic* |

| ![](docs/lab5/datapath_sym.png) | 
|:--:| 
| *Datapath Symbol* |

| ![](docs/lab5/datapath_lay.png) | 
|:--:| alu
| *Datapath Layout* |

| ![](docs/lab5/datapath_ext.png) | 
|:--:| 
| *Datapath Extract* |

### ALU Decoder

| ![](docs/lab6/aludecoder_sch.png) | 
|:--:| 
| *ALU Decoder Schematic* |

| ![](docs/lab6/aludecoder_sym.png) | 
|:--:| 
| *ALU Decoder Symbol* |

| ![](docs/lab6/aludecoder_lay.png) | 
|:--:| 
| *ALU Decoder Layout* |

| ![](docs/lab6/aludecoder_ext.png) | 
|:--:| 
| *ALU Decoder Extract* |

### Controller (using Innovus)

| ![](docs/lab6/controller_innovus_floorplan.png) | 
|:--:| 
| *Controller Floorplan* |

### Full Chip

| ![](docs/lab6/chip_sch.png) | 
|:--:| 
| *Chip Schematic* |

| ![](docs/lab7/chip_lay.png) | 
|:--:| 
| *Chip Layout* |

| ![](docs/lab7/chip_ext.png) | 
|:--:| 
| *Chip Extract* |