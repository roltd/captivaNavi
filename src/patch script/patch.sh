#!/bin/bash

cp LCN_Main.exe LCN_Main_patch.exe
# com3 -> com5
printf '\x35' | dd of=LCN_Main_patch.exe bs=1 seek=$((0xaa9b6)) count=1 conv=notrunc 
#path to Turbodog -> "Storage Card/Navi/Turbodog.exe"
printf '\x53\x0\x74\x0\x6f\x0\x72\x0\x61\x0\x67\x0\x65\x0\x20\x0\x43\x0\x61\x0\x72\x0\x64\x0\x5c' | dd of=LCN_Main_patch.exe bs=1 seek=$((0xa9c46)) conv=notrunc
printf '\x53\x0\x74\x0\x6f\x0\x72\x0\x61\x0\x67\x0\x65\x0\x20\x0\x43\x0\x61\x0\x72\x0\x64\x0\x5c' | dd of=LCN_Main_patch.exe bs=1 seek=$((0xb0c36)) conv=notrunc

# Don`t show "Caution screen"
#cp LCN_Main_patch.exe LCN_Main_patch_1.exe
printf '\x0\x10' | dd of=LCN_Main_patch.exe bs=1 seek=$((0x934E4-0x10c00+2)) conv=notrunc
printf '\x0\x0\x0\x0' | dd of=LCN_Main_patch.exe bs=1 seek=$((0x9338C-0x10c00)) conv=notrunc


#offset[9]=0x913AC
#offset[12]=0x933C0

#for i in "${offset[@]}"
#do
  #cp LCN_Main_patch.exe p1/LCN_Main_patch_$i.exe
  #printf '\xff\xff\xff\x0C' | dd of=p1/LCN_Main_patch_$i.exe bs=1 seek=$(($i-0x10c00)) conv=notrunc
#done


