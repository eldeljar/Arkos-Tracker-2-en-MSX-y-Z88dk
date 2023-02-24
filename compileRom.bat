del *.lis *.rom *.map *.bin *.o *.sym *.def .\bin\*.rom
D:\z88dk\bin\zcc +msx -lmsxbios -v -lm -lndos -m -s -create-app -DAMALLOC -subtype=rom -pragma-define:CRT_MODEL=2 -o prueba.bin @zproject.lst
move prueba.rom .\bin\
pause