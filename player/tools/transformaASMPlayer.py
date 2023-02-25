import re

with open('./player/playerPasmo.asm', 'r') as fdPasmo, open('./player/playerZ88dk.asm', 'w+') as fdZ88dk:
        lineas = fdPasmo.readlines()
        fdZ88dk.write("SECTION code_user\n\n")

        fdZ88dk.write("PUBLIC PLY_AKG_INIT\n");
        fdZ88dk.write("PUBLIC PLY_AKG_PLAY\n");
        fdZ88dk.write("PUBLIC PLY_AKG_STOP\n");
        fdZ88dk.write("PUBLIC PLY_AKG_INITSOUNDEFFECTS\n");
        fdZ88dk.write("PUBLIC PLY_AKG_PLAYSOUNDEFFECT\n");
        fdZ88dk.write("PUBLIC _SONG\n");
        fdZ88dk.write("\n\n");

        for linea in lineas:
                # DB -> DEFB
                # DW -> DEFW
                #lineaAux = linea.replace('\\.db', 'defb').replace('\\.dw', 'defw')
                lineaAux = linea.replace('db', 'defb').replace('dw', 'defw')

                # add : to all labels which are alone on a single line
                m = re.fullmatch('(\w+)\s+', lineaAux)
                if m != None:
                        lineaAux = m.group(1) + ":\n"
                        fdZ88dk.write(lineaAux)
                        continue

                # replace $+N with ASMPC defs
                m = re.fullmatch('(\w+)\s+equ\s+\$([\+\-]\d+)', lineaAux)
                if m != None:
                        lineaAux = "defc " + m.group(1) + " = ASMPC " + m.group(2)
                        fdZ88dk.write(lineaAux)
                        continue

                # replace EQU defs with DEFC
                if lineaAux.find("equ $+") > 0:
                        lineaAux = "defc " + lineaAux.replace("equ $+","= ")
                        fdZ88dk.write(lineaAux)
                        continue

                # add : to all labels with instructions on the same line
                m = re.fullmatch('(\w+)\s+(.*)\s+', lineaAux)
                if m != None:
                        lineaAux = m.group(1) + ":\n\t" #+ m.group(2) + "\n"

                        if m.group(2).find("equ ") >= 0:
                                lineaAux += "defw " + m.group(2).replace("equ "," ") + "\n"
                        else:
                                lineaAux += m.group(2) + "\n"

                        fdZ88dk.write(lineaAux)
                        continue
                
                fdZ88dk.write(lineaAux)      
        