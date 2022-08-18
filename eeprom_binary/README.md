### Binary Files

This folder already have 2 binary from 2 different board.

1. Digilent SMT1 for FT2232HL base board.

2. Digilent HS2 for FT232H base board.

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

FT2232HL base board

```bash
sudo ftdi_eeprom --flash-eeprom flash_digilent_smt1.conf
```

FT232H base board

```bash
sudo ftdi_eeprom --flash-eeprom flash_digilent_hs2.conf
```
