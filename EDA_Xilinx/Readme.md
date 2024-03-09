## Xilinx EDA Folder

This folder is some files for Xilinx EDA Vivado.

### Folder Structure

```bash
│  CPU_TOP_new.bit
│  minisys_cons.xdc
│
└─ip
    ├─cpuclk
    ├─prgrom
    ├─RAM
    └─uart_bmpg_0
```

### File/Folder Function

- **CPU_TOP_new.bit**: Binary bitstream file for this project
- **minisys_cons.xdc**: Pin constraint file for FPGA MINISYS-1A
- ip: IP core file folder generated by Vivado
    - cpuclk/: clock divider
    - prgrom/: Program instructions ROM module for this CPU
    - RAM/: RAM module for this CPU
    - uart_bmpg_0/: UART communication module for the software reload
