del *.lis *.rom *.map *.bin *.o *.sym *.def .\bin\*.rom

del .\player\*.sym, .\player\*.bin, .\player\*.o, .\player\playerPasmo.asm, .\player\playerZ88dk.asm
.\player\tools\rasm_x64.exe .\player\CompileAT2Files.asm -o .\player\AT2Player -s -sl -sq
.\player\tools\Disark.exe .\player\AT2Player.bin .\player\playerPasmo.asm --symbolFile .\player\AT2Player.sym --sourceProfile pasmo 
python .\player\tools\transformaASMPlayer.py
del .\player\playerPasmo.asm


D:\z88dk\bin\zcc +msx -lmsxbios -v -lm -lndos -m -s -create-app -DAMALLOC -subtype=rom -pragma-define:CRT_MODEL=2 -o prueba.bin @zproject.lst
move prueba.rom .\bin\
pause