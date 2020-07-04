# Assemble Language Final Assignment (20sp, ucas)
## wangsongyue18@mails.ucas.ac.cn
## Author
* Landon WONG, UCAS
* 王嵩岳, 2018K8009929033
* Last modified: July. 04, 2020
## Notice
* Development environment: Ubuntu 18.04 (Desktop) amd-64 (physical machine), Linux Kernel: 4.15, compilation tool: gcc
* **ERROR Handle**: If an error is reported when executing `make *_asm` (including `make memcpy_asm`, `make atoi_asm`):\
**`fatal error: bits/libc-header-start.h: No such file or directory`**, this is because `gcc-multilib` is not configured.\
Please execute `sudo apt-get install gcc-multilib` and try to execute `make *_asm` again. This problem usually occurs when **running on virtual machines**.
## Description
This assignment has three parts:
| Assignment Name | Description |
| :---------------: | :---------------: |
| atoi | Use the assembler to implement the atoi function and convert strings to numbers (need to consider the sign and irrelevant symbols) |
| memcpy | Use the assembler to implement the memcpy function, realize memory data movement, optimize as much as possible, and introduce performance evaluation and evaluation efficiency |
| freq | Use embedded assembly to record the execution cycle, combined with the timing function, calculate the frequency of machine operation |
## Schedule
| Assignment Name | Status |
| :---------------: | :---------------: |
| atoi (#1) | Finished (Jun. 24) |
| memcpy (#2) | Almost Finished (Jun. 25) (need benchmark) |
| freq (#3) | INIT |
## File structure
For checking assignment:
| Filename | Description |
| :---------------: | :---------------: |
| `atoi/atoi.s` | Assignment #1 (atoi) |
| `memcpy/memcpy.s` | Assignment #2 (memcpy) |
| `freq/freq.c` | Assignment #3 (freq) |
```
AssembleLangFinal
  |
  |--doc                    # assignment report
  |    |--2018K8009929033.pdf
  |
  |--atoi
  |    |--main.c            # test main program
  |    |--atoi.s            # Assignment #1: atoi
  |    |--Makefile
  |
  |--memcpy
  |    |--main.c            # test main program
  |    |--memcpy.s          # Assignment #2: memcpy
  |    |--Makefile
  | 
  |--freq
  |    |--freq.c            # Assignment #3: frequency
  |    |--Makefile
  |
  |--Readme.md              # Documentation
  |--Readme.pdf             # Documentation (PDF)
  |--Makefile
  |--LICENSE            
 ```
## Usage
**NOTE: All the following commands are executed in the top directory.**
### Format
Make command format: `make VAL=<assignment name> ACT=<action>`
1. assignment name

| `<assignment name>` | Description |
| :---------------: | :---------------: |
| `atoi` | Assignment #1 |
| `memcpy` | Assignment #2 |
| `freq` | Assignment #3 |

2. action

| `<action>` | Description |
| :---------------: | :---------------: |
| `asm` | compile but not link, only for assignment #1#2 |
| `link` | link `*.o` |
| `compile` | compile, only for assignment #3 |
| `run` | run testbench |
| `clear` | Delete intermediate temporary files |

### Examples
1. For assignment **#1: atoi**

| Command | Description |
| :---------------: | :---------------: |
| `make VAL=atoi ACT=asm` | Compile `atoi/atoi.s` and main program `atoi/main.c`. Generate `*.o` files |
| `make VAL=atoi ACT=link` | Link `*.o` files |
| `make VAL=atoi ACT=run` | Run atoi test program |
| `make VAL=atoi ACT=clean` | Delete intermediate temporary files |

2. For assignment **#2: memcpy**

| Command | Description |
| :---------------: | :---------------: |
| `make VAL=memcpy ACT=asm` | Compile `memcpy/memcpy.s` and main program `memcpy/main.c`. Generate `*.o` files |
| `make VAL=memcpy ACT=link` | Link `*.o` files |
| `make VAL=memcpy ACT=run` | Run memcpy test program |
| `make VAL=memcpy ACT=clean` | Delete intermediate temporary files |
3. For assignment **#3: frequency**

| Command | Description |
| :---------------: | :---------------: |
| `make VAL=freq ACT=compile` | Compile program `freq/freq.c` |
| `make VAL=freq ACT=run` | Run freq test program |
| `make VAL=freq ACT=clean` | Delete intermediate temporary files |
