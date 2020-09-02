# Hello world bootloader

This is a simple 16 bit Hello world bootloader written in NASM.

## What you need to run the example

* the NASM assembler [http://www.nasm.us/](http://www.nasm.us/)
* Bochs simulator [https://qemu.weilnetz.de/](https://qemu.weilnetz.de/)

## Assemble and boot

This is only a one file bootloader, so there's no need to link. All you need is the following:

```bash
nasm -f bin bootloader.asm -o bootloader.bin

```

You may have noticed two files in the root directory: bootloader.asm which is our main code file, and bochsrc.txt which has configuration files for the Bochs simulator. Learn more on Bochs docs. Let's boot our very bootloader.

```bash
bochs -q
```

Congrats on running your first (or not?) bootloader.

### GitHub repository for more
[https://github.com/MurphyAdam/Assembly](https://github.com/MurphyAdam/Assembly)

