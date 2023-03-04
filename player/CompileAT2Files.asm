;Compiles the player, the music and sfxs, using RASM.
;No ORG needed.

;org #C000     ;This is the fixed address of the player/music
;PlayerAndMusicBinary_Start
    ;This is the music, and its config file.
    include "./resources/songm_playerconfig.asm" ;Optional.
 
    ;This is the sfxs, and its config file.  
    ;include "SoundEffects.asm" 
    ;include "SoundEffects_playerconfig.asm"  ;Optional.

    PLY_AKM_HARDWARE_MSX = 1
    PLY_AKM_MANAGE_SOUND_EFFECTS = 1
    ;PLY_AKM_ROM = 1
    ;PLY_AKM_ROM_Buffer = #c000


    ;This is the player.
    include "PlayerAkm.asm"

    _SONG:
    include "./resources/songm.asm" 

    ;include "effects.asm"
;PlayerAndMusicBinary_End