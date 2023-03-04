;;
;; C stubs for Arkos invocation from zcc
;;

section data_user

;; public C symbols
PUBLIC _ply_akg_init
PUBLIC _ply_akg_play
PUBLIC _ply_akg_stop

;; external Arkos 2 entry points
EXTERN PLY_AKG_INIT
EXTERN PLY_AKG_PLAY
EXTERN PLY_AKG_STOP
EXTERN _SONG


;;
;; void ply_akg_init( void *song, uint8_t subsong ) __z88dk_callee;
;;   (params pushed on the stack right to left, all 16-bit)
;;
_ply_akg_init:
   pop bc    ; BC = retaddr
   pop de    ; E = subsong number
   pop hl    ; HL = song address
   push bc   ; restore retaddr
   ld   a,e
   jp PLY_AKG_INIT

;;
;; void ply_akg_play( void );
;;
_ply_akg_play:
  jp PLY_AKG_PLAY

;;
;; void ply_akg_stop( void );
;;
_ply_akg_stop:
  jp PLY_AKG_STOP