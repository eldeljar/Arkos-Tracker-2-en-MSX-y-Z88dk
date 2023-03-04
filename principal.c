#include <msx/gfx.h>
#include <stdio.h>

#include <intrinsic.h>
#include <interrupt.h>
#include <stdint.h>

#if __PC6001__ | __MULTI8__ 
#define NO_INTERRUPT 1
#endif

// Arkos C prototypes
extern void ply_akm_init( void *song, unsigned int subsong ) __z88dk_callee;
extern void ply_akm_play( void );
extern void ply_akm_stop( void );

extern int SONG[];


void playmusic(void) {
   M_PRESERVE_ALL;
   ply_akm_play();
   M_RESTORE_ALL;
}

// Setup interrupt
void setup_int() {
#ifndef NO_INTERRUPT
  #if __SPECTRUM__
   zx_im2_init(0xd300, 0xd4);
   add_raster_int(0x38);
  #endif
  #ifndef NO_INTERRUPT_INIT
   im1_init();
  #endif
   add_raster_int(playmusic);
#endif
}

void main (void) {

  ply_akm_init(SONG, 0 );

  printf("Before\n");

  setup_int();

  printf("After\n");
  
  while ( 1 ) {
     /*printf(".");
     intrinsic_di();
     ply_akm_play();
     intrinsic_ei();
     printf("/");
     intrinsic_halt();*/

    //setup_int();

    /*printf("Hola\n");

    intrinsic_di();
    ply_akm_play();
    intrinsic_ei();
    intrinsic_halt();

    printf("Adios\n");*/

  }
}
