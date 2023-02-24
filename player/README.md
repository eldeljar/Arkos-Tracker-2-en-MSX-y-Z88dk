# Player

## 1. arkos2_wrapper.asm

Wrapper para usar las funciones del player desde el programa el código C. Actualmente el código generado se inserta en la SECTION code_user.

## 2. CompileAT2Files.asm

Incluye la música, el player y los parámetros del player para MSX.

## 3. makefileArkos.bat

Script para generar el fichero ASM del player y la música compatible con Z88dk para que sea compilado posteriormente al generar la Rom.

# 4. PlayerAkg.asm y PlayerAkg_SoundEffects.asm

El player de Arkos Tracker 2

# 5. playerZ88dk.asm

Es el fichero generado por el script. Contiente el código en ASM del player y la música compatible con Z88dk.
