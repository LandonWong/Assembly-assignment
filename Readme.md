# Asseble Language Final Assignment (20sp,ucas)
## wangsongyue18@mails.ucas.ac.cn
## Author
* Landon WONG, UCAS
* 王嵩岳,2018K8009929033
## File structure
```
AssembleLangFinal
  |
  |--doc            # assignment report
  |    |--2018K8009929033.pdf
  |
  |--atoi
  |    |--main.c    # test main program
  |    |--atoi.s    # Assignment #1: atoi
  |    |--Makefile
  |
  |--memcpy
  |    |--main.c    # test main program
  |    |--memcpy.s  # Assignment #2: memcpy
  |    |--Makefile
  | 
  |--freq
  |    |--main.c    # Assignment #3: frequency
  |    |--Makefile
  |
  |--Readme.md      # Documentation
  |
  |--Makefile
  |
  |--LICENSE        # MIT License
```
## Usage
**Note: All the following commands are executed in the top directory**

0. Global

| Command | Description |
| :---------------: | :---------------: |
| `make cmt` | Commit all changes |
| `make push` | Push to my repo at GitHub |

1. For assignment **#1: atoi**

| Command | Description |
| :---------------: | :---------------: |
| `make atoi_asm` | Compile `atoi/atoi.s` and main program `atoi/main.c`. Generate *.o files |
| `make atoi_link` | Link *.o files |
| `make atoi_run` | Run atoi test program |
| `make atoi_clean` | Delete intermediate temporary files |
2. For assignment **#2: memcpy**

| Command | Description |
| :---------------: | :---------------: |
| `make memcpy_asm` | Compile `memcpy/memcpy.s` and main program `memcpy/main.c`. Generate `*.o` files |
| `make memcpy_link` | Link `*.o` files |
| `make memcpy_run` | Run memcpy test program |
| `make memcpy_clean` | Delete intermediate temporary files |
3. For assignment **#3: frequency**

| Command | Description |
| :---------------: | :---------------: |
| `make freq_compile` | Compile program freq/main.c |
| `make freq_run` | Run freq test program |
| `make freq_clean` | Delete intermediate temporary files |
