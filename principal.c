#include <msx/gfx.h>
#include <stdio.h>

#include <intrinsic.h>
#include <interrupt.h>
#include <stdint.h>

#if __PC6001__ | __MULTI8__ 
#define NO_INTERRUPT 1
#endif

// Arkos C prototypes
extern void ply_akg_init( void *song, unsigned int subsong ) __z88dk_callee;
extern void ply_akg_play( void );
extern void ply_akg_stop( void );

extern int SONG[];

void playmusic(void) {
   M_PRESERVE_ALL;
   ply_akg_play();
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

  ply_akg_init(SONG, 0 );
  
  printf("Before\n");

  setup_int();

  printf("After\n");
   
  while ( 1 ) {
    /*(*(uint8_t *)0x4000)++;
        
    intrinsic_di();*/
    ply_akg_play();
    intrinsic_ei();
    intrinsic_halt();*/

  }
}
