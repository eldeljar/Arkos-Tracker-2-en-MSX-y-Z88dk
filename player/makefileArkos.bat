@echo on
del *.sym, del *.bin, *.o, playerPasmo.asm, playerZ88dk.asm
.\tools\rasm_x64.exe CompileAT2Files.asm -o AT2Player -s -sl -sq
.\tools\Disark.exe AT2Player.bin playerPasmo.asm --symbolFile AT2Player.sym --sourceProfile pasmo 
python .\tools\transformaASMPlayer.py
del playerPasmo.asm
pause