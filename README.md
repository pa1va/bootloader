# Bootloader Simples

Este projeto contém um **bootloader extremamente simples** escrito em Assembly x86 de 16 bits, que imprime uma mensagem na tela ao inicializar o sistema. É um exemplo que mostra como a BIOS carrega o primeiro setor do disco (MBR) e executa o código ali presente.

## O que ele faz?

1. Inicializa o modo de vídeo padrão (modo texto 80x25).
2. Mostra a mensagem: `Hello World!`
3. Entra em loop infinito.

---

### Pré-requisitos

1. [NASM](https://www.nasm.us/) – Montador de Assembly
2. [QEMU](https://www.qemu.org/) – Emulador para testar código de baixo nível

---

### Compilando o bootloader

Abra o terminal na pasta do projeto e execute:

```bash
nasm -f bin bootloader.asm -o bootloader.bin
```

Isso irá gerar um arquivo binário puro (`bootloader.bin`) com exatamente 512 bytes.

---

### Testando com QEMU

Execute:

```bash
qemu-system-x86_64 -drive format=raw,file=bootloader.bin
```

QEMU iniciará uma máquina virtual e você verá a mensagem `Hello from MBR!` sendo exibida.
