#!/bin/bash

cp LCN_Main.exe LCN_Main_oneArea.exe
# com3 -> com5
printf '\x35' | dd of=LCN_Main_oneArea.exe bs=1 seek=$((0xB4BFC-0x12000 + 6)) count=1 conv=notrunc 
#path to Turbodog -> "Storage Card/Navi/Turbodog.exe"
printf '\x53\x0\x74\x0\x6f\x0\x72\x0\x61\x0\x67\x0\x65\x0\x20\x0\x43\x0\x61\x0\x72\x0\x64\x0\x5c' | dd of=LCN_Main_oneArea.exe bs=1 seek=$((0xB3C26-0x12000)) conv=notrunc
printf '\x53\x0\x74\x0\x6f\x0\x72\x0\x61\x0\x67\x0\x65\x0\x20\x0\x43\x0\x61\x0\x72\x0\x64\x0\x5c' | dd of=LCN_Main_oneArea.exe bs=1 seek=$((0xBA1C2-0x12000)) conv=notrunc


