# Build Linux kernel

- Choose the platform defconfig which you want compile.
```
$ make ARCH=x86_64 x86_64_defconfig 
  YACC    scripts/kconfig/parser.tab.[ch]
  HOSTCC  scripts/kconfig/lexer.lex.o
  HOSTCC  scripts/kconfig/parser.tab.o
  HOSTCC  scripts/kconfig/preprocess.o
  HOSTCC  scripts/kconfig/symbol.o
  HOSTLD  scripts/kconfig/conf
#
# configuration written to .config
#
```

- Open or close the option in menuconfig.
```
$ make ARCH=x86_64 menuconfig
```

- Really compile kernel image now.
```
# the number after -j can be the core number of your cpu.
$ make -j6
```

- Locate the image you build out.
```
$ find . -name "bzImage"
./arch/x86/boot/bzImage
./arch/x86_64/boot/bzImage
```
