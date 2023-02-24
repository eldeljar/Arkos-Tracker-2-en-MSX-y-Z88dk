# Herramientas

* Rasm: https://github.com/EdouardBERGE/rasm/releases
* Disark: https://julien-nevo.com/disark/
* Python: https://www.python.org/downloads/

El fichero "transformaASMPlayer.py" contiene el código Python para transformar el código ASM generado con el compilador Pasmo a código ASM compatible con Z88dk. Actualmente el código generado se inserta en la SECTION code_user.

El proceso está basado en el Makefile realizado por "jorgegv" en su código:

https://github.com/jorgegv/z88dk-arkos-relocatable/blob/main/periodic/Makefile
