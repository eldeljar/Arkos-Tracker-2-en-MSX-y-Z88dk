;;
;; C stubs for Arkos invocation from zcc
;;

section data_user

;; public C symbols
PUBLIC _ply_akm_init
PUBLIC _ply_akm_play
PUBLIC _ply_akm_stop

;; external Arkos 2 entry points
EXTERN PLY_AKM_INIT
EXTERN PLY_AKM_PLAY
EXTERN PLY_AKM_STOP
EXTERN _SONG


;;
;; void ply_akm_init( void *song, uint8_t subsong ) __z88dk_callee;
;;   (params pushed on the stack right to left, all 16-bit)
;;
_ply_akm_init:
  pop bc    ; BC = retaddr
  pop de    ; E = subsong number
  pop hl    ; HL = song address
  push bc   ; restore retaddr
  ld   a,e
  jp PLY_AKM_INIT

;;
;; void ply_akm_play( void );
;;
_ply_akm_play:
  jp PLY_AKM_PLAY

;;
;; void ply_akm_stop( void );
;;
_ply_akm_stop:
  jp PLY_AKM_STOP
