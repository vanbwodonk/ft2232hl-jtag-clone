### Binary Files

This folder already have 2 binary from 2 different board.

1. Digilent SMT1 for FT2232HL base board.

2. Digilent HS2 for FT232H base board (from Microphase board).

3. Digilent HS1 for FT232H base board (from Aliexpress).

I don't know if HS1 & HS2 make a different when in use in ISE/Vivado. Only test it on Vivado, because never used ISE anymore. Place it all here just in case. 

## Requirements

### ftdi_eeprom - Linux

Is a small tool for reading/erasing/flashing FTDI USB chip eeproms.

Under ubuntu just install with this:

```bash
sudo apt-get install ftdi_eeprom
```

Under Arch/Manjaro:

```bash
sudo pacman -S libftdi
```

## How To Flash EEPROM

FT2232HL **SMT1** base board

```bash
sudo ftdi_eeprom --flash-eeprom flash_digilent_smt1.conf
```

FT232H **HS2** base board 

```bash
sudo ftdi_eeprom --flash-eeprom flash_digilent_hs2.conf
```

FT232H **HS1** base board

```bash
sudo ftdi_eeprom --flash-eeprom flash_alinx_ft232h.conf
```
