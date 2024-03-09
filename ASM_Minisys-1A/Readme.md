## MIPS Assembly Folder

This folder is some files for MIPS Assembly.

### Folder Structure

```bash
|   Readme.md
|   scene1.asm
|   scene2.asm
|
+---coe
|       sc1_dmem32.coe
|       sc1_prgmip32.coe
|       sc2_dmem32.coe
|       sc2_prgmip32.coe
|
+---new_version_asm
|       scene1_new.asm
|       scene2_new.asm
|
\---uart_txt
        sc1_new_version.txt
        sc1_uart_out.txt
        sc2_new_version.txt
        sc2_uart_out.txt

```

### File Function

- **scene(x).asm**: MIPS assembly source code of scene x
- **sc(x)_dmem32.coe**: RAM IP core data for scene x
- **sc(x)_prgmip32.coe**: ROM (prgrom) IP core data for scene x
- **sc(x)_uart_out.txt**: Whole program data with UART loadding for scene x

