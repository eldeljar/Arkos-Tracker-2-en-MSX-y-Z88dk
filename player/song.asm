; Just add cream, Song part, encoded in the AKM (minimalist) format V0.


	SECTION rodata_user

	PUBLIC _SONG
_SONG:
.Justaddcream_Start
.Justaddcream_StartDisarkGenerateExternalLabel

.Justaddcream_DisarkPointerRegionStart0
	dw Justaddcream_InstrumentIndexes	; Index table for the Instruments.
	dw Justaddcream_ArpeggioIndexes - 2	; Index table for the Arpeggios.
	dw Justaddcream_PitchIndexes - 2	; Index table for the Pitches.

; The subsongs references.
	dw Justaddcream_Subsong0
.Justaddcream_DisarkPointerRegionEnd0

; The Instrument indexes.
.Justaddcream_InstrumentIndexes
.Justaddcream_DisarkPointerRegionStart1
	dw Justaddcream_Instrument0
	dw Justaddcream_Instrument1
	dw Justaddcream_Instrument2
	dw Justaddcream_Instrument3
	dw Justaddcream_Instrument4
	dw Justaddcream_Instrument5
	dw Justaddcream_Instrument6
	dw Justaddcream_Instrument7
	dw Justaddcream_Instrument8
	dw Justaddcream_Instrument9
	dw Justaddcream_Instrument10
	dw Justaddcream_Instrument11
.Justaddcream_DisarkPointerRegionEnd1

; The Instrument.
.Justaddcream_DisarkByteRegionStart2
.Justaddcream_Instrument0
	db 255	; Speed.

.Justaddcream_Instrument0Loop	db 0	; Volume: 0.

	db 4	; End the instrument.
.Justaddcream_DisarkPointerRegionStart3
	dw Justaddcream_Instrument0Loop	; Loops.
.Justaddcream_DisarkPointerRegionEnd3

.Justaddcream_Instrument1
	db 0	; Speed.

	db 181	; Volume: 13.
	db 1	; Arpeggio: 0.
	db 31	; Noise: 31.

	db 61	; Volume: 15.

	db 61	; Volume: 15.

	db 61	; Volume: 15.

	db 53	; Volume: 13.

	db 4	; End the instrument.
.Justaddcream_DisarkPointerRegionStart4
	dw Justaddcream_Instrument0Loop	; Loop to silence.
.Justaddcream_DisarkPointerRegionEnd4

.Justaddcream_Instrument2
	db 0	; Speed.

	db 189	; Volume: 15.
	db 1	; Arpeggio: 0.
	db 17	; Noise: 17.

	db 61	; Volume: 15.

	db 61	; Volume: 15.

	db 61	; Volume: 15.

	db 232	; Volume: 13.
	db 13	; Noise.

	db 216	; Volume: 11.
	db 13	; Noise.

	db 4	; End the instrument.
.Justaddcream_DisarkPointerRegionStart5
	dw Justaddcream_Instrument0Loop	; Loop to silence.
.Justaddcream_DisarkPointerRegionEnd5

.Justaddcream_Instrument3
	db 0	; Speed.

	db 82
	db 82
	db 53	; Volume: 13.

	db 49	; Volume: 12.

	db 45	; Volume: 11.

	db 45	; Volume: 11.

.Justaddcream_Instrument3Loop	db 45	; Volume: 11.

	db 45	; Volume: 11.

	db 4	; End the instrument.
.Justaddcream_DisarkPointerRegionStart6
	dw Justaddcream_Instrument3Loop	; Loops.
.Justaddcream_DisarkPointerRegionEnd6

.Justaddcream_Instrument4
	db 0	; Speed.

	db 49	; Volume: 12.

	db 45	; Volume: 11.

	db 41	; Volume: 10.

.Justaddcream_Instrument4Loop	db 37	; Volume: 9.

	db 4	; End the instrument.
.Justaddcream_DisarkPointerRegionStart7
	dw Justaddcream_Instrument4Loop	; Loops.
.Justaddcream_DisarkPointerRegionEnd7

.Justaddcream_Instrument5
	db 0	; Speed.

	db 181	; Volume: 13.
	db 1	; Arpeggio: 0.
	db 31	; Noise: 31.

	db 61	; Volume: 15.

	db 61	; Volume: 15.

	db 61	; Volume: 15.

.Justaddcream_Instrument5Loop	db 45	; Volume: 11.

	db 4	; End the instrument.
.Justaddcream_DisarkPointerRegionStart8
	dw Justaddcream_Instrument5Loop	; Loops.
.Justaddcream_DisarkPointerRegionEnd8

.Justaddcream_Instrument6
	db 0	; Speed.

	db 185	; Volume: 14.
	db 1	; Arpeggio: 0.
	db 17	; Noise: 17.

	db 57	; Volume: 14.

	db 57	; Volume: 14.

	db 57	; Volume: 14.

	db 224	; Volume: 12.
	db 13	; Noise.

.Justaddcream_Instrument6Loop	db 45	; Volume: 11.

	db 4	; End the instrument.
.Justaddcream_DisarkPointerRegionStart9
	dw Justaddcream_Instrument6Loop	; Loops.
.Justaddcream_DisarkPointerRegionEnd9

.Justaddcream_Instrument7
	db 0	; Speed.

	db 57	; Volume: 14.

	db 53	; Volume: 13.

	db 49	; Volume: 12.

.Justaddcream_Instrument7Loop	db 45	; Volume: 11.

	db 4	; End the instrument.
.Justaddcream_DisarkPointerRegionStart10
	dw Justaddcream_Instrument7Loop	; Loops.
.Justaddcream_DisarkPointerRegionEnd10

.Justaddcream_Instrument8
	db 0	; Speed.

.Justaddcream_Instrument8Loop	db 33	; Volume: 8.

	db 4	; End the instrument.
.Justaddcream_DisarkPointerRegionStart11
	dw Justaddcream_Instrument8Loop	; Loops.
.Justaddcream_DisarkPointerRegionEnd11

.Justaddcream_Instrument9
	db 0	; Speed.

	db 165	; Volume: 9.
	db 24	; Arpeggio: 12.

	db 161	; Volume: 8.
	db 24	; Arpeggio: 12.

	db 29	; Volume: 7.

.Justaddcream_Instrument9Loop	db 25	; Volume: 6.

	db 153	; Volume: 6.
	db 24	; Arpeggio: 12.

	db 153	; Volume: 6.
	db 24	; Arpeggio: 12.

	db 25	; Volume: 6.

	db 4	; End the instrument.
.Justaddcream_DisarkPointerRegionStart12
	dw Justaddcream_Instrument9Loop	; Loops.
.Justaddcream_DisarkPointerRegionEnd12

.Justaddcream_Instrument10
	db 0	; Speed.

	db 153	; Volume: 6.
	db 24	; Arpeggio: 12.

	db 149	; Volume: 5.
	db 24	; Arpeggio: 12.

	db 17	; Volume: 4.

.Justaddcream_Instrument10Loop	db 13	; Volume: 3.

	db 141	; Volume: 3.
	db 24	; Arpeggio: 12.

	db 141	; Volume: 3.
	db 24	; Arpeggio: 12.

	db 13	; Volume: 3.

	db 4	; End the instrument.
.Justaddcream_DisarkPointerRegionStart13
	dw Justaddcream_Instrument10Loop	; Loops.
.Justaddcream_DisarkPointerRegionEnd13

.Justaddcream_Instrument11
	db 0	; Speed.

	db 149	; Volume: 5.
	db 24	; Arpeggio: 12.

	db 145	; Volume: 4.
	db 24	; Arpeggio: 12.

	db 13	; Volume: 3.

.Justaddcream_Instrument11Loop	db 9	; Volume: 2.

	db 137	; Volume: 2.
	db 24	; Arpeggio: 12.

	db 137	; Volume: 2.
	db 24	; Arpeggio: 12.

	db 9	; Volume: 2.

	db 4	; End the instrument.
.Justaddcream_DisarkPointerRegionStart14
	dw Justaddcream_Instrument11Loop	; Loops.
.Justaddcream_DisarkPointerRegionEnd14

.Justaddcream_DisarkByteRegionEnd2
.Justaddcream_ArpeggioIndexes
.Justaddcream_DisarkPointerRegionStart15
	dw Justaddcream_Arpeggio1
	dw Justaddcream_Arpeggio2
	dw Justaddcream_Arpeggio3
.Justaddcream_DisarkPointerRegionEnd15

.Justaddcream_DisarkByteRegionStart16
.Justaddcream_Arpeggio1
	db 1	; Speed

	db 14	; Value: 7
	db 8	; Value: 4
	db 0	; Value: 0
	db 0 * 2 + 1	; Loops to index 0.
.Justaddcream_Arpeggio2
	db 1	; Speed

	db 32	; Value: 16
	db 24	; Value: 12
	db 14	; Value: 7
	db 0 * 2 + 1	; Loops to index 0.
.Justaddcream_Arpeggio3
	db 1	; Speed

	db 24	; Value: 12
	db 14	; Value: 7
	db 8	; Value: 4
	db 0 * 2 + 1	; Loops to index 0.
.Justaddcream_DisarkByteRegionEnd16

.Justaddcream_PitchIndexes
.Justaddcream_DisarkPointerRegionStart17
	dw Justaddcream_Pitch1
.Justaddcream_DisarkPointerRegionEnd17

.Justaddcream_DisarkByteRegionStart18
.Justaddcream_Pitch1
	db 0	; Speed

	db -2	; Value: -1
	db -4	; Value: -2
	db -6	; Value: -3
	db -4	; Value: -2
	db -2	; Value: -1
	db 2	; Value: 1
	db 4	; Value: 2
	db 6	; Value: 3
	db 4	; Value: 2
	db 0 * 2 + 1	; Loops to index 0.
.Justaddcream_DisarkByteRegionEnd18

; Just add cream, Subsong 0.
; ----------------------------------

.Justaddcream_Subsong0
.Justaddcream_Subsong0DisarkPointerRegionStart0
	dw Justaddcream_Subsong0_NoteIndexes	; Index table for the notes.
	dw Justaddcream_Subsong0_TrackIndexes	; Index table for the Tracks.
.Justaddcream_Subsong0DisarkPointerRegionEnd0

.Justaddcream_Subsong0DisarkByteRegionStart1
	db 6	; Initial speed.

	db 3	; Most used instrument.
	db 4	; Second most used instrument.

	db 0	; Most used wait.
	db 1	; Second most used wait.

	db 63	; Default start note in tracks.
	db 1	; Default start instrument in tracks.
	db 0	; Default start wait in tracks.

	db 12	; Are there effects? 12 if yes, 13 if not. Don't ask.
.Justaddcream_Subsong0DisarkByteRegionEnd1

; The Linker.
.Justaddcream_Subsong0DisarkByteRegionStart2
; Pattern 0
	db 171	; State byte.
	db 7	; New speed (>0).
	db 63	; New height.
	db ((Justaddcream_Subsong0_Track17 - ($ + 2)) & 0xff00) / 256	; New track (17) for channel 1, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track17 - ($ + 1)) & 255)
	db ((Justaddcream_Subsong0_Track22 - ($ + 2)) & 0xff00) / 256	; New track (22) for channel 2, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track22 - ($ + 1)) & 255)
	db 132	; New track (0) for channel 3, as a reference (index 4).

; Pattern 1
	db 40	; State byte.
	db ((Justaddcream_Subsong0_Track18 - ($ + 2)) & 0xff00) / 256	; New track (18) for channel 1, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track18 - ($ + 1)) & 255)
	db ((Justaddcream_Subsong0_Track21 - ($ + 2)) & 0xff00) / 256	; New track (21) for channel 2, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track21 - ($ + 1)) & 255)

; Pattern 2
	db 168	; State byte.
	db 136	; New track (2) for channel 1, as a reference (index 8).
	db ((Justaddcream_Subsong0_Track19 - ($ + 2)) & 0xff00) / 256	; New track (19) for channel 2, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track19 - ($ + 1)) & 255)
	db ((Justaddcream_Subsong0_Track20 - ($ + 2)) & 0xff00) / 256	; New track (20) for channel 3, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track20 - ($ + 1)) & 255)

; Pattern 3
	db 160	; State byte.
	db 132	; New track (0) for channel 2, as a reference (index 4).
	db ((Justaddcream_Subsong0_Track29 - ($ + 2)) & 0xff00) / 256	; New track (29) for channel 3, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track29 - ($ + 1)) & 255)

; Pattern 4
.Justaddcream_Subsong0_Loop
	db 160	; State byte.
	db 128	; New track (3) for channel 2, as a reference (index 0).
	db ((Justaddcream_Subsong0_Track1 - ($ + 2)) & 0xff00) / 256	; New track (1) for channel 3, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track1 - ($ + 1)) & 255)

; Pattern 5
	db 168	; State byte.
	db ((Justaddcream_Subsong0_Track24 - ($ + 2)) & 0xff00) / 256	; New track (24) for channel 1, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track24 - ($ + 1)) & 255)
	db ((Justaddcream_Subsong0_Track25 - ($ + 2)) & 0xff00) / 256	; New track (25) for channel 2, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track25 - ($ + 1)) & 255)
	db ((Justaddcream_Subsong0_Track26 - ($ + 2)) & 0xff00) / 256	; New track (26) for channel 3, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track26 - ($ + 1)) & 255)

; Pattern 6
	db 168	; State byte.
	db 129	; New track (4) for channel 1, as a reference (index 1).
	db 128	; New track (3) for channel 2, as a reference (index 0).
	db 131	; New track (5) for channel 3, as a reference (index 3).

; Pattern 7
	db 128	; State byte.
	db 137	; New track (23) for channel 3, as a reference (index 9).

; Pattern 8
	db 170	; State byte.
	db 31	; New height.
	db ((Justaddcream_Subsong0_Track9 - ($ + 2)) & 0xff00) / 256	; New track (9) for channel 1, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track9 - ($ + 1)) & 255)
	db 133	; New track (7) for channel 2, as a reference (index 5).
	db 138	; New track (30) for channel 3, as a reference (index 10).

; Pattern 9
	db 40	; State byte.
	db ((Justaddcream_Subsong0_Track10 - ($ + 2)) & 0xff00) / 256	; New track (10) for channel 1, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track10 - ($ + 1)) & 255)
	db 134	; New track (8) for channel 2, as a reference (index 6).

; Pattern 10
	db 40	; State byte.
	db ((Justaddcream_Subsong0_Track11 - ($ + 2)) & 0xff00) / 256	; New track (11) for channel 1, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track11 - ($ + 1)) & 255)
	db 133	; New track (7) for channel 2, as a reference (index 5).

; Pattern 11
	db 168	; State byte.
	db ((Justaddcream_Subsong0_Track12 - ($ + 2)) & 0xff00) / 256	; New track (12) for channel 1, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track12 - ($ + 1)) & 255)
	db 134	; New track (8) for channel 2, as a reference (index 6).
	db 132	; New track (0) for channel 3, as a reference (index 4).

; Pattern 12
	db 170	; State byte.
	db 63	; New height.
	db 129	; New track (4) for channel 1, as a reference (index 1).
	db 128	; New track (3) for channel 2, as a reference (index 0).
	db 131	; New track (5) for channel 3, as a reference (index 3).

; Pattern 13
	db 128	; State byte.
	db ((Justaddcream_Subsong0_Track6 - ($ + 2)) & 0xff00) / 256	; New track (6) for channel 3, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track6 - ($ + 1)) & 255)

; Pattern 14
	db 128	; State byte.
	db 131	; New track (5) for channel 3, as a reference (index 3).

; Pattern 15
	db 128	; State byte.
	db 137	; New track (23) for channel 3, as a reference (index 9).

; Pattern 16
	db 170	; State byte.
	db 31	; New height.
	db ((Justaddcream_Subsong0_Track9 - ($ + 2)) & 0xff00) / 256	; New track (9) for channel 1, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track9 - ($ + 1)) & 255)
	db 133	; New track (7) for channel 2, as a reference (index 5).
	db 130	; New track (27) for channel 3, as a reference (index 2).

; Pattern 17
	db 40	; State byte.
	db ((Justaddcream_Subsong0_Track10 - ($ + 2)) & 0xff00) / 256	; New track (10) for channel 1, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track10 - ($ + 1)) & 255)
	db 134	; New track (8) for channel 2, as a reference (index 6).

; Pattern 18
	db 40	; State byte.
	db ((Justaddcream_Subsong0_Track11 - ($ + 2)) & 0xff00) / 256	; New track (11) for channel 1, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track11 - ($ + 1)) & 255)
	db 133	; New track (7) for channel 2, as a reference (index 5).

; Pattern 19
	db 40	; State byte.
	db ((Justaddcream_Subsong0_Track12 - ($ + 2)) & 0xff00) / 256	; New track (12) for channel 1, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track12 - ($ + 1)) & 255)
	db 134	; New track (8) for channel 2, as a reference (index 6).

; Pattern 20
	db 40	; State byte.
	db ((Justaddcream_Subsong0_Track13 - ($ + 2)) & 0xff00) / 256	; New track (13) for channel 1, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track13 - ($ + 1)) & 255)
	db 135	; New track (28) for channel 2, as a reference (index 7).

; Pattern 21
	db 8	; State byte.
	db ((Justaddcream_Subsong0_Track14 - ($ + 2)) & 0xff00) / 256	; New track (14) for channel 1, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track14 - ($ + 1)) & 255)

; Pattern 22
	db 8	; State byte.
	db ((Justaddcream_Subsong0_Track15 - ($ + 2)) & 0xff00) / 256	; New track (15) for channel 1, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track15 - ($ + 1)) & 255)

; Pattern 23
	db 8	; State byte.
	db ((Justaddcream_Subsong0_Track16 - ($ + 2)) & 0xff00) / 256	; New track (16) for channel 1, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track16 - ($ + 1)) & 255)

; Pattern 24
	db 170	; State byte.
	db 63	; New height.
	db 129	; New track (4) for channel 1, as a reference (index 1).
	db 128	; New track (3) for channel 2, as a reference (index 0).
	db 131	; New track (5) for channel 3, as a reference (index 3).

; Pattern 25
	db 128	; State byte.
	db ((Justaddcream_Subsong0_Track6 - ($ + 2)) & 0xff00) / 256	; New track (6) for channel 3, as an offset. Offset MSB, then LSB.
	db ((Justaddcream_Subsong0_Track6 - ($ + 1)) & 255)

; Pattern 26
	db 128	; State byte.
	db 131	; New track (5) for channel 3, as a reference (index 3).

; Pattern 27
	db 128	; State byte.
	db 137	; New track (23) for channel 3, as a reference (index 9).

	db 1	; End of the Song.
	db 0	; Speed to 0, meaning "end of song".
.Justaddcream_Subsong0DisarkByteRegionEnd2
.Justaddcream_Subsong0DisarkPointerRegionStart3
	dw Justaddcream_Subsong0_Loop

.Justaddcream_Subsong0DisarkPointerRegionEnd3
; The indexes of the tracks.
.Justaddcream_Subsong0_TrackIndexes
.Justaddcream_Subsong0DisarkPointerRegionStart4
	dw Justaddcream_Subsong0_Track3	; Track 3, index 0.
	dw Justaddcream_Subsong0_Track4	; Track 4, index 1.
	dw Justaddcream_Subsong0_Track27	; Track 27, index 2.
	dw Justaddcream_Subsong0_Track5	; Track 5, index 3.
	dw Justaddcream_Subsong0_Track0	; Track 0, index 4.
	dw Justaddcream_Subsong0_Track7	; Track 7, index 5.
	dw Justaddcream_Subsong0_Track8	; Track 8, index 6.
	dw Justaddcream_Subsong0_Track28	; Track 28, index 7.
	dw Justaddcream_Subsong0_Track2	; Track 2, index 8.
	dw Justaddcream_Subsong0_Track23	; Track 23, index 9.
	dw Justaddcream_Subsong0_Track30	; Track 30, index 10.
.Justaddcream_Subsong0DisarkPointerRegionEnd4

.Justaddcream_Subsong0DisarkByteRegionStart5
.Justaddcream_Subsong0_Track0
	db 240	; New instrument (0). Note reference (0). New wait (127).
	db 0	;   Escape instrument value.
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track1
	db 12	; Note with effects flag.
	db 193	; Note reference (1). New wait (3).
	db 3	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 49	; New instrument (2). Note reference (1). 
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 49	; New instrument (1). Note reference (1). 
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 177	; New instrument (2). Note reference (1). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 49	; New instrument (1). Note reference (1). 
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 129	; Note reference (1). Secondary wait (1).
	db 12	; Note with effects flag.
	db 49	; New instrument (2). Note reference (1). 
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 49	; New instrument (1). Note reference (1). 
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 177	; New instrument (2). Note reference (1). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 177	; New instrument (1). Note reference (1). Secondary wait (1).
	db 1	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 1	; Note reference (1). 
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 49	; New instrument (2). Note reference (1). 
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 49	; New instrument (1). Note reference (1). 
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 177	; New instrument (2). Note reference (1). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 241	; New instrument (1). Note reference (1). New wait (5).
	db 1	;   Escape instrument value.
	db 5	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (3).
	db 2	;   Escape instrument value.
	db 3	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 177	; New instrument (1). Note reference (1). Secondary wait (1).
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 129	; Note reference (1). Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (127).
	db 2	;   Escape instrument value.
	db 127	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.

.Justaddcream_Subsong0_Track2
	db 12	; Note with effects flag.
	db 212	; Primary instrument (3). Note reference (4). New wait (2).
	db 2	;   Escape wait value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 6	;    Arpeggio table effect 0.
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 86	; Primary instrument (3). Note reference (6). Primary wait (0).
	db 64	; Note reference (0). Primary wait (0).
	db 84	; Primary instrument (3). Note reference (4). Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 19. Primary wait (0).
	db 19	;   Escape note value.
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 94	; Primary instrument (3). New escaped note: 24. Primary wait (0).
	db 24	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 30	; Primary instrument (3). New escaped note: 26. 
	db 26	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 14. Primary wait (0).
	db 14	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 158	; Primary instrument (3). New escaped note: 26. Secondary wait (1).
	db 26	;   Escape note value.
	db 95	; Primary instrument (3). Same escaped note: 26. Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 24. Primary wait (0).
	db 24	;   Escape note value.
	db 158	; Primary instrument (3). New escaped note: 26. Secondary wait (1).
	db 26	;   Escape note value.
	db 158	; Primary instrument (3). New escaped note: 28. Secondary wait (1).
	db 28	;   Escape note value.
	db 128	; Note reference (0). Secondary wait (1).
	db 30	; Primary instrument (3). New escaped note: 29. 
	db 29	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 17. Primary wait (0).
	db 17	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 158	; Primary instrument (3). New escaped note: 29. Secondary wait (1).
	db 29	;   Escape note value.
	db 95	; Primary instrument (3). Same escaped note: 29. Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 24. Primary wait (0).
	db 24	;   Escape note value.
	db 158	; Primary instrument (3). New escaped note: 29. Secondary wait (1).
	db 29	;   Escape note value.
	db 25	; Primary instrument (3). Note reference (9). 
	db 64	; Note reference (0). Primary wait (0).
	db 158	; Primary instrument (3). New escaped note: 24. Secondary wait (1).
	db 24	;   Escape note value.
	db 128	; Note reference (0). Secondary wait (1).
	db 94	; Primary instrument (3). New escaped note: 19. Primary wait (0).
	db 19	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 158	; Primary instrument (3). New escaped note: 24. Secondary wait (1).
	db 24	;   Escape note value.
	db 89	; Primary instrument (3). Note reference (9). Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 19. Primary wait (0).
	db 19	;   Escape note value.
	db 158	; Primary instrument (3). New escaped note: 23. Secondary wait (1).
	db 23	;   Escape note value.
	db 94	; Primary instrument (3). New escaped note: 26. Primary wait (0).
	db 26	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 158	; Primary instrument (3). New escaped note: 23. Secondary wait (1).
	db 23	;   Escape note value.
	db 94	; Primary instrument (3). New escaped note: 19. Primary wait (0).
	db 19	;   Escape note value.
	db 192	; Note reference (0). New wait (127).
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track3
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 22	;    Arpeggio table effect 1.
	db 221	; Effect only. New wait (2).
	db 2	;   Escape wait value.
	db 12	; Note with effects flag.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 38	;    Arpeggio table effect 2.
	db 162	; Secondary instrument (4). Note reference (2). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 22	;    Arpeggio table effect 1.
	db 12	; Note with effects flag.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 38	;    Arpeggio table effect 2.
	db 162	; Secondary instrument (4). Note reference (2). Secondary wait (1).
	db 22	;    Arpeggio table effect 1.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 98	; Secondary instrument (4). Note reference (2). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 22	;    Arpeggio table effect 1.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 54	;    Arpeggio table effect 3.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 98	; Secondary instrument (4). Note reference (2). Primary wait (0).
	db 29	; Effect only. 
	db 12	; Note with effects flag.
	db 227	; Secondary instrument (4). Note reference (3). New wait (3).
	db 3	;   Escape wait value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 101	; Secondary instrument (4). Note reference (5). Primary wait (0).
	db 22	;    Arpeggio table effect 1.
	db 221	; Effect only. New wait (2).
	db 2	;   Escape wait value.
	db 12	; Note with effects flag.
	db 229	; Secondary instrument (4). Note reference (5). New wait (3).
	db 3	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 162	; Secondary instrument (4). Note reference (2). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 22	;    Arpeggio table effect 1.
	db 224	; Secondary instrument (4). Note reference (0). New wait (127).
	db 127	;   Escape wait value.
	db 54	;    Arpeggio table effect 3.

.Justaddcream_Subsong0_Track4
	db 12	; Note with effects flag.
	db 244	; New instrument (5). Note reference (4). New wait (2).
	db 5	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 118	; New instrument (6). Note reference (6). Primary wait (0).
	db 6	;   Escape instrument value.
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 84	; Primary instrument (3). Note reference (4). Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 19. Primary wait (0).
	db 19	;   Escape note value.
	db 180	; New instrument (5). Note reference (4). Secondary wait (1).
	db 5	;   Escape instrument value.
	db 94	; Primary instrument (3). New escaped note: 24. Primary wait (0).
	db 24	;   Escape note value.
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 180	; New instrument (6). Note reference (4). Secondary wait (1).
	db 6	;   Escape instrument value.
	db 62	; New instrument (5). New escaped note: 26. 
	db 26	;   Escape note value.
	db 5	;   Escape instrument value.
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 126	; New instrument (5). New escaped note: 14. Primary wait (0).
	db 14	;   Escape note value.
	db 5	;   Escape instrument value.
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 190	; New instrument (6). New escaped note: 26. Secondary wait (1).
	db 26	;   Escape note value.
	db 6	;   Escape instrument value.
	db 95	; Primary instrument (3). Same escaped note: 26. Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 24. Primary wait (0).
	db 24	;   Escape note value.
	db 190	; New instrument (5). New escaped note: 26. Secondary wait (1).
	db 26	;   Escape note value.
	db 5	;   Escape instrument value.
	db 158	; Primary instrument (3). New escaped note: 28. Secondary wait (1).
	db 28	;   Escape note value.
	db 12	; Note with effects flag.
	db 177	; New instrument (2). Note reference (1). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 190	; New instrument (5). New escaped note: 29. Secondary wait (1).
	db 29	;   Escape note value.
	db 5	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 79	; Same escaped note: 29. Primary wait (0).
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 94	; Primary instrument (3). New escaped note: 17. Primary wait (0).
	db 17	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 190	; New instrument (6). New escaped note: 29. Secondary wait (1).
	db 29	;   Escape note value.
	db 6	;   Escape instrument value.
	db 95	; Primary instrument (3). Same escaped note: 29. Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 24. Primary wait (0).
	db 24	;   Escape note value.
	db 190	; New instrument (5). New escaped note: 29. Secondary wait (1).
	db 29	;   Escape note value.
	db 5	;   Escape instrument value.
	db 153	; Primary instrument (3). Note reference (9). Secondary wait (1).
	db 12	; Note with effects flag.
	db 177	; New instrument (2). Note reference (1). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 190	; New instrument (5). New escaped note: 24. Secondary wait (1).
	db 24	;   Escape note value.
	db 5	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 176	; New instrument (0). Note reference (0). Secondary wait (1).
	db 0	;   Escape instrument value.
	db 94	; Primary instrument (3). New escaped note: 19. Primary wait (0).
	db 19	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 190	; New instrument (6). New escaped note: 24. Secondary wait (1).
	db 24	;   Escape note value.
	db 6	;   Escape instrument value.
	db 89	; Primary instrument (3). Note reference (9). Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 19. Primary wait (0).
	db 19	;   Escape note value.
	db 190	; New instrument (5). New escaped note: 23. Secondary wait (1).
	db 23	;   Escape note value.
	db 5	;   Escape instrument value.
	db 78	; New escaped note: 26. Primary wait (0).
	db 26	;   Escape note value.
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 190	; New instrument (6). New escaped note: 23. Secondary wait (1).
	db 23	;   Escape note value.
	db 6	;   Escape instrument value.
	db 94	; Primary instrument (3). New escaped note: 19. Primary wait (0).
	db 19	;   Escape note value.
	db 240	; New instrument (0). Note reference (0). New wait (127).
	db 0	;   Escape instrument value.
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track5
	db 12	; Note with effects flag.
	db 127	; New instrument (7). Same escaped note: 63. Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 9	;    Pitch table effect 0.
	db 244	;    Pitch up: 256.
	db 0	;    Pitch, LSB.
	db 129	;    Pitch, MSB.
	db 78	; New escaped note: 64. Primary wait (0).
	db 64	;   Escape note value.
	db 72	; Note reference (8). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 127	; New instrument (8). Same escaped note: 64. Primary wait (0).
	db 8	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 187	; New instrument (7). Note reference (11). Secondary wait (1).
	db 7	;   Escape instrument value.
	db 72	; Note reference (8). Primary wait (0).
	db 12	; Note with effects flag.
	db 123	; New instrument (8). Note reference (11). Primary wait (0).
	db 8	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 181	; New instrument (7). Note reference (5). Secondary wait (1).
	db 7	;   Escape instrument value.
	db 72	; Note reference (8). Primary wait (0).
	db 12	; Note with effects flag.
	db 117	; New instrument (8). Note reference (5). Primary wait (0).
	db 8	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 117	; New instrument (7). Note reference (5). Primary wait (0).
	db 7	;   Escape instrument value.
	db 120	; New instrument (8). Note reference (8). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 122	; New instrument (7). Note reference (10). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 244	;    Pitch up: 512.
	db 0	;    Pitch, LSB.
	db 130	;    Pitch, MSB.
	db 69	; Note reference (5). Primary wait (0).
	db 157	; Effect only. Secondary wait (1).
	db 24	;    Pitch table effect 1.
	db 75	; Note reference (11). Primary wait (0).
	db 8	;    Pitch table effect 0.
	db 93	; Effect only. Primary wait (0).
	db 244	;    Pitch down: 1280.
	db 0	;    Pitch, LSB.
	db 5	;    Pitch, MSB.
	db 12	; Note with effects flag.
	db 117	; New instrument (8). Note reference (5). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 24	;    Pitch table effect 1.
	db 75	; Note reference (11). Primary wait (0).
	db 8	;    Pitch table effect 0.
	db 157	; Effect only. Secondary wait (1).
	db 244	;    Pitch down: 1280.
	db 0	;    Pitch, LSB.
	db 5	;    Pitch, MSB.
	db 119	; New instrument (7). Note reference (7). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 66	; Note reference (2). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 123	; New instrument (8). Note reference (11). Primary wait (0).
	db 8	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 71	; Note reference (7). Primary wait (0).
	db 114	; New instrument (7). Note reference (2). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 72	; Note reference (8). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 119	; New instrument (8). Note reference (7). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 66	; Note reference (2). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 115	; New instrument (7). Note reference (3). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 24	;    Pitch table effect 1.
	db 120	; New instrument (8). Note reference (8). Primary wait (0).
	db 8	;   Escape instrument value.
	db 119	; New instrument (7). Note reference (7). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 8	;    Pitch table effect 0.
	db 12	; Note with effects flag.
	db 115	; New instrument (8). Note reference (3). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 24	;    Pitch table effect 1.
	db 115	; New instrument (7). Note reference (3). Primary wait (0).
	db 7	;   Escape instrument value.
	db 119	; New instrument (8). Note reference (7). Primary wait (0).
	db 8	;   Escape instrument value.
	db 8	;    Pitch table effect 0.
	db 119	; New instrument (7). Note reference (7). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 115	; New instrument (8). Note reference (3). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 24	;    Pitch table effect 1.
	db 115	; New instrument (7). Note reference (3). Primary wait (0).
	db 7	;   Escape instrument value.
	db 119	; New instrument (8). Note reference (7). Primary wait (0).
	db 8	;   Escape instrument value.
	db 8	;    Pitch table effect 0.
	db 119	; New instrument (7). Note reference (7). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 115	; New instrument (8). Note reference (3). Primary wait (0).
	db 8	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 112	; New instrument (7). Note reference (0). Primary wait (0).
	db 7	;   Escape instrument value.
	db 119	; New instrument (8). Note reference (7). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 126	; New instrument (7). New escaped note: 47. Primary wait (0).
	db 47	;   Escape note value.
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 244	;    Pitch up: 384.
	db 128	;    Pitch, LSB.
	db 129	;    Pitch, MSB.
	db 64	; Note reference (0). Primary wait (0).
	db 221	; Effect only. New wait (3).
	db 3	;   Escape wait value.
	db 24	;    Pitch table effect 1.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track6
	db 12	; Note with effects flag.
	db 127	; New instrument (7). Same escaped note: 63. Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 9	;    Pitch table effect 0.
	db 244	;    Pitch up: 256.
	db 0	;    Pitch, LSB.
	db 129	;    Pitch, MSB.
	db 78	; New escaped note: 64. Primary wait (0).
	db 64	;   Escape note value.
	db 72	; Note reference (8). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 127	; New instrument (8). Same escaped note: 64. Primary wait (0).
	db 8	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 187	; New instrument (7). Note reference (11). Secondary wait (1).
	db 7	;   Escape instrument value.
	db 72	; Note reference (8). Primary wait (0).
	db 12	; Note with effects flag.
	db 123	; New instrument (8). Note reference (11). Primary wait (0).
	db 8	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 181	; New instrument (7). Note reference (5). Secondary wait (1).
	db 7	;   Escape instrument value.
	db 72	; Note reference (8). Primary wait (0).
	db 12	; Note with effects flag.
	db 117	; New instrument (8). Note reference (5). Primary wait (0).
	db 8	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 117	; New instrument (7). Note reference (5). Primary wait (0).
	db 7	;   Escape instrument value.
	db 120	; New instrument (8). Note reference (8). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 122	; New instrument (7). Note reference (10). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 244	;    Pitch up: 512.
	db 0	;    Pitch, LSB.
	db 130	;    Pitch, MSB.
	db 69	; Note reference (5). Primary wait (0).
	db 157	; Effect only. Secondary wait (1).
	db 24	;    Pitch table effect 1.
	db 75	; Note reference (11). Primary wait (0).
	db 8	;    Pitch table effect 0.
	db 93	; Effect only. Primary wait (0).
	db 244	;    Pitch down: 1280.
	db 0	;    Pitch, LSB.
	db 5	;    Pitch, MSB.
	db 12	; Note with effects flag.
	db 117	; New instrument (8). Note reference (5). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 24	;    Pitch table effect 1.
	db 75	; Note reference (11). Primary wait (0).
	db 8	;    Pitch table effect 0.
	db 157	; Effect only. Secondary wait (1).
	db 244	;    Pitch down: 1280.
	db 0	;    Pitch, LSB.
	db 5	;    Pitch, MSB.
	db 119	; New instrument (7). Note reference (7). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 66	; Note reference (2). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 123	; New instrument (8). Note reference (11). Primary wait (0).
	db 8	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 71	; Note reference (7). Primary wait (0).
	db 114	; New instrument (7). Note reference (2). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 72	; Note reference (8). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 119	; New instrument (8). Note reference (7). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 66	; Note reference (2). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 115	; New instrument (7). Note reference (3). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 24	;    Pitch table effect 1.
	db 120	; New instrument (8). Note reference (8). Primary wait (0).
	db 8	;   Escape instrument value.
	db 119	; New instrument (7). Note reference (7). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 8	;    Pitch table effect 0.
	db 12	; Note with effects flag.
	db 115	; New instrument (8). Note reference (3). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 24	;    Pitch table effect 1.
	db 115	; New instrument (7). Note reference (3). Primary wait (0).
	db 7	;   Escape instrument value.
	db 119	; New instrument (8). Note reference (7). Primary wait (0).
	db 8	;   Escape instrument value.
	db 8	;    Pitch table effect 0.
	db 119	; New instrument (7). Note reference (7). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 115	; New instrument (8). Note reference (3). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 24	;    Pitch table effect 1.
	db 115	; New instrument (7). Note reference (3). Primary wait (0).
	db 7	;   Escape instrument value.
	db 119	; New instrument (8). Note reference (7). Primary wait (0).
	db 8	;   Escape instrument value.
	db 8	;    Pitch table effect 0.
	db 12	; Note with effects flag.
	db 114	; New instrument (7). Note reference (2). Primary wait (0).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 136	; Note reference (8). Secondary wait (1).
	db 114	; New instrument (8). Note reference (2). Primary wait (0).
	db 8	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 242	; New instrument (7). Note reference (2). New wait (2).
	db 7	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 24	;    Pitch table effect 1.
	db 120	; New instrument (8). Note reference (8). Primary wait (0).
	db 8	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 117	; New instrument (7). Note reference (5). Primary wait (0).
	db 7	;   Escape instrument value.
	db 8	;    Pitch table effect 0.
	db 12	; Note with effects flag.
	db 50	; New instrument (8). Note reference (2). 
	db 8	;   Escape instrument value.
	db 24	;    Pitch table effect 1.
	db 12	; Note with effects flag.
	db 126	; New instrument (7). New escaped note: 58. Primary wait (0).
	db 58	;   Escape note value.
	db 7	;   Escape instrument value.
	db 9	;    Pitch table effect 0.
	db 244	;    Pitch up: 384.
	db 128	;    Pitch, LSB.
	db 129	;    Pitch, MSB.
	db 74	; Note reference (10). Primary wait (0).
	db 157	; Effect only. Secondary wait (1).
	db 24	;    Pitch table effect 1.
	db 72	; Note reference (8). Primary wait (0).
	db 8	;    Pitch table effect 0.
	db 12	; Note with effects flag.
	db 122	; New instrument (8). Note reference (10). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 24	;    Pitch table effect 1.
	db 12	; Note with effects flag.
	db 114	; New instrument (7). Note reference (2). Primary wait (0).
	db 7	;   Escape instrument value.
	db 8	;    Pitch table effect 0.
	db 120	; New instrument (8). Note reference (8). Primary wait (0).
	db 8	;   Escape instrument value.
	db 119	; New instrument (7). Note reference (7). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 242	; New instrument (8). Note reference (2). New wait (127).
	db 8	;   Escape instrument value.
	db 127	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.

.Justaddcream_Subsong0_Track7
	db 12	; Note with effects flag.
	db 193	; Note reference (1). New wait (3).
	db 3	;   Escape wait value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 9	;    Pitch table effect 0.
	db 6	;    Arpeggio table effect 0.
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 65	; Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 177	; New instrument (1). Note reference (1). Secondary wait (1).
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 193	; Note reference (1). New wait (3).
	db 3	;   Escape wait value.
	db 12	; Note with effects flag.
	db 49	; New instrument (2). Note reference (1). 
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 177	; New instrument (1). Note reference (1). Secondary wait (1).
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 49	; New instrument (2). Note reference (1). 
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 177	; New instrument (1). Note reference (1). Secondary wait (1).
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 129	; Note reference (1). Secondary wait (1).
	db 12	; Note with effects flag.
	db 113	; New instrument (2). Note reference (1). Primary wait (0).
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 193	; Note reference (1). New wait (127).
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track8
	db 12	; Note with effects flag.
	db 193	; Note reference (1). New wait (3).
	db 3	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 113	; New instrument (1). Note reference (1). Primary wait (0).
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 129	; Note reference (1). Secondary wait (1).
	db 129	; Note reference (1). Secondary wait (1).
	db 129	; Note reference (1). Secondary wait (1).
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (3).
	db 2	;   Escape instrument value.
	db 3	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 177	; New instrument (1). Note reference (1). Secondary wait (1).
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 65	; Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 113	; New instrument (1). Note reference (1). Primary wait (0).
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 113	; New instrument (2). Note reference (1). Primary wait (0).
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 177	; New instrument (1). Note reference (1). Secondary wait (1).
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 49	; New instrument (2). Note reference (1). 
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 193	; Note reference (1). New wait (127).
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track9
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 240	; New instrument (0). Note reference (0). New wait (4).
	db 0	;   Escape instrument value.
	db 4	;   Escape wait value.
	db 86	; Primary instrument (3). Note reference (6). Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 28. Primary wait (0).
	db 28	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 89	; Primary instrument (3). Note reference (9). Primary wait (0).
	db 192	; Note reference (0). New wait (2).
	db 2	;   Escape wait value.
	db 150	; Primary instrument (3). Note reference (6). Secondary wait (1).
	db 128	; Note reference (0). Secondary wait (1).
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 192	; Note reference (0). New wait (3).
	db 3	;   Escape wait value.
	db 158	; Primary instrument (3). New escaped note: 19. Secondary wait (1).
	db 19	;   Escape note value.
	db 128	; Note reference (0). Secondary wait (1).
	db 158	; Primary instrument (3). New escaped note: 20. Secondary wait (1).
	db 20	;   Escape note value.
	db 192	; Note reference (0). New wait (127).
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track10
	db 150	; Primary instrument (3). Note reference (6). Secondary wait (1).
	db 176	; New instrument (0). Note reference (0). Secondary wait (1).
	db 0	;   Escape instrument value.
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 64	; Note reference (0). Primary wait (0).
	db 86	; Primary instrument (3). Note reference (6). Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 28. Primary wait (0).
	db 28	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 153	; Primary instrument (3). Note reference (9). Secondary wait (1).
	db 128	; Note reference (0). Secondary wait (1).
	db 150	; Primary instrument (3). Note reference (6). Secondary wait (1).
	db 128	; Note reference (0). Secondary wait (1).
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 192	; Note reference (0). New wait (3).
	db 3	;   Escape wait value.
	db 89	; Primary instrument (3). Note reference (9). Primary wait (0).
	db 89	; Primary instrument (3). Note reference (9). Primary wait (0).
	db 128	; Note reference (0). Secondary wait (1).
	db 95	; Primary instrument (3). Same escaped note: 28. Primary wait (0).
	db 95	; Primary instrument (3). Same escaped note: 28. Primary wait (0).
	db 192	; Note reference (0). New wait (127).
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track11
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 240	; New instrument (0). Note reference (0). New wait (4).
	db 0	;   Escape instrument value.
	db 4	;   Escape wait value.
	db 86	; Primary instrument (3). Note reference (6). Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 28. Primary wait (0).
	db 28	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 89	; Primary instrument (3). Note reference (9). Primary wait (0).
	db 86	; Primary instrument (3). Note reference (6). Primary wait (0).
	db 128	; Note reference (0). Secondary wait (1).
	db 150	; Primary instrument (3). Note reference (6). Secondary wait (1).
	db 64	; Note reference (0). Primary wait (0).
	db 86	; Primary instrument (3). Note reference (6). Primary wait (0).
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 192	; Note reference (0). New wait (3).
	db 3	;   Escape wait value.
	db 94	; Primary instrument (3). New escaped note: 29. Primary wait (0).
	db 29	;   Escape note value.
	db 86	; Primary instrument (3). Note reference (6). Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 36. Primary wait (0).
	db 36	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 89	; Primary instrument (3). Note reference (9). Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 35. Primary wait (0).
	db 35	;   Escape note value.
	db 94	; Primary instrument (3). New escaped note: 38. Primary wait (0).
	db 38	;   Escape note value.
	db 192	; Note reference (0). New wait (127).
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track12
	db 150	; Primary instrument (3). Note reference (6). Secondary wait (1).
	db 176	; New instrument (0). Note reference (0). Secondary wait (1).
	db 0	;   Escape instrument value.
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 64	; Note reference (0). Primary wait (0).
	db 86	; Primary instrument (3). Note reference (6). Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 28. Primary wait (0).
	db 28	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 153	; Primary instrument (3). Note reference (9). Secondary wait (1).
	db 94	; Primary instrument (3). New escaped note: 19. Primary wait (0).
	db 19	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 150	; Primary instrument (3). Note reference (6). Secondary wait (1).
	db 128	; Note reference (0). Secondary wait (1).
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 192	; Note reference (0). New wait (2).
	db 2	;   Escape wait value.
	db 89	; Primary instrument (3). Note reference (9). Primary wait (0).
	db 159	; Primary instrument (3). Same escaped note: 19. Secondary wait (1).
	db 153	; Primary instrument (3). Note reference (9). Secondary wait (1).
	db 158	; Primary instrument (3). New escaped note: 20. Secondary wait (1).
	db 20	;   Escape note value.
	db 222	; Primary instrument (3). New escaped note: 32. New wait (127).
	db 32	;   Escape note value.
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track13
	db 12	; Note with effects flag.
	db 180	; New instrument (5). Note reference (4). Secondary wait (1).
	db 5	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 176	; New instrument (0). Note reference (0). Secondary wait (1).
	db 0	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 118	; New instrument (6). Note reference (6). Primary wait (0).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (5). New escaped note: 28. Primary wait (0).
	db 28	;   Escape note value.
	db 5	;   Escape instrument value.
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 121	; New instrument (5). Note reference (9). Primary wait (0).
	db 5	;   Escape instrument value.
	db 48	; New instrument (0). Note reference (0). 
	db 0	;   Escape instrument value.
	db 182	; New instrument (6). Note reference (6). Secondary wait (1).
	db 6	;   Escape instrument value.
	db 176	; New instrument (0). Note reference (0). Secondary wait (1).
	db 0	;   Escape instrument value.
	db 180	; New instrument (5). Note reference (4). Secondary wait (1).
	db 5	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (3).
	db 2	;   Escape instrument value.
	db 3	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 190	; New instrument (5). New escaped note: 19. Secondary wait (1).
	db 19	;   Escape note value.
	db 5	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 177	; New instrument (1). Note reference (1). Secondary wait (1).
	db 1	;   Escape instrument value.
	db 126	; New instrument (6). New escaped note: 20. Primary wait (0).
	db 20	;   Escape note value.
	db 6	;   Escape instrument value.
	db 79	; Same escaped note: 20. Primary wait (0).
	db 240	; New instrument (0). Note reference (0). New wait (127).
	db 0	;   Escape instrument value.
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track14
	db 12	; Note with effects flag.
	db 182	; New instrument (5). Note reference (6). Secondary wait (1).
	db 5	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 176	; New instrument (0). Note reference (0). Secondary wait (1).
	db 0	;   Escape instrument value.
	db 180	; New instrument (6). Note reference (4). Secondary wait (1).
	db 6	;   Escape instrument value.
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 118	; New instrument (5). Note reference (6). Primary wait (0).
	db 5	;   Escape instrument value.
	db 78	; New escaped note: 28. Primary wait (0).
	db 28	;   Escape note value.
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 185	; New instrument (5). Note reference (9). Secondary wait (1).
	db 5	;   Escape instrument value.
	db 177	; New instrument (1). Note reference (1). Secondary wait (1).
	db 1	;   Escape instrument value.
	db 182	; New instrument (6). Note reference (6). Secondary wait (1).
	db 6	;   Escape instrument value.
	db 176	; New instrument (0). Note reference (0). Secondary wait (1).
	db 0	;   Escape instrument value.
	db 180	; New instrument (5). Note reference (4). Secondary wait (1).
	db 5	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 65	; Note reference (1). Primary wait (0).
	db 12	; Note with effects flag.
	db 121	; New instrument (5). Note reference (9). Primary wait (0).
	db 5	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 121	; New instrument (6). Note reference (9). Primary wait (0).
	db 6	;   Escape instrument value.
	db 177	; New instrument (1). Note reference (1). Secondary wait (1).
	db 1	;   Escape instrument value.
	db 127	; New instrument (6). Same escaped note: 28. Primary wait (0).
	db 6	;   Escape instrument value.
	db 95	; Primary instrument (3). Same escaped note: 28. Primary wait (0).
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (127).
	db 2	;   Escape instrument value.
	db 127	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.

.Justaddcream_Subsong0_Track15
	db 12	; Note with effects flag.
	db 180	; New instrument (5). Note reference (4). Secondary wait (1).
	db 5	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 176	; New instrument (0). Note reference (0). Secondary wait (1).
	db 0	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 118	; New instrument (6). Note reference (6). Primary wait (0).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 126	; New instrument (5). New escaped note: 28. Primary wait (0).
	db 28	;   Escape note value.
	db 5	;   Escape instrument value.
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 121	; New instrument (5). Note reference (9). Primary wait (0).
	db 5	;   Escape instrument value.
	db 86	; Primary instrument (3). Note reference (6). Primary wait (0).
	db 176	; New instrument (0). Note reference (0). Secondary wait (1).
	db 0	;   Escape instrument value.
	db 182	; New instrument (6). Note reference (6). Secondary wait (1).
	db 6	;   Escape instrument value.
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 86	; Primary instrument (3). Note reference (6). Primary wait (0).
	db 180	; New instrument (5). Note reference (4). Secondary wait (1).
	db 5	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (3).
	db 2	;   Escape instrument value.
	db 3	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 126	; New instrument (5). New escaped note: 29. Primary wait (0).
	db 29	;   Escape note value.
	db 5	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 86	; Primary instrument (3). Note reference (6). Primary wait (0).
	db 78	; New escaped note: 36. Primary wait (0).
	db 36	;   Escape note value.
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 121	; New instrument (6). Note reference (9). Primary wait (0).
	db 6	;   Escape instrument value.
	db 78	; New escaped note: 35. Primary wait (0).
	db 35	;   Escape note value.
	db 94	; Primary instrument (3). New escaped note: 38. Primary wait (0).
	db 38	;   Escape note value.
	db 240	; New instrument (0). Note reference (0). New wait (127).
	db 0	;   Escape instrument value.
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track16
	db 12	; Note with effects flag.
	db 182	; New instrument (5). Note reference (6). Secondary wait (1).
	db 5	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 176	; New instrument (0). Note reference (0). Secondary wait (1).
	db 0	;   Escape instrument value.
	db 180	; New instrument (6). Note reference (4). Secondary wait (1).
	db 6	;   Escape instrument value.
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 118	; New instrument (5). Note reference (6). Primary wait (0).
	db 5	;   Escape instrument value.
	db 78	; New escaped note: 28. Primary wait (0).
	db 28	;   Escape note value.
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 185	; New instrument (5). Note reference (9). Secondary wait (1).
	db 5	;   Escape instrument value.
	db 78	; New escaped note: 19. Primary wait (0).
	db 19	;   Escape note value.
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 182	; New instrument (6). Note reference (6). Secondary wait (1).
	db 6	;   Escape instrument value.
	db 176	; New instrument (0). Note reference (0). Secondary wait (1).
	db 0	;   Escape instrument value.
	db 180	; New instrument (5). Note reference (4). Secondary wait (1).
	db 5	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (2).
	db 2	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 121	; New instrument (6). Note reference (9). Primary wait (0).
	db 6	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 127	; New instrument (5). Same escaped note: 19. Primary wait (0).
	db 5	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 113	; New instrument (2). Note reference (1). Primary wait (0).
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 185	; New instrument (5). Note reference (9). Secondary wait (1).
	db 5	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 190	; New instrument (6). New escaped note: 20. Secondary wait (1).
	db 20	;   Escape note value.
	db 6	;   Escape instrument value.
	db 94	; Primary instrument (3). New escaped note: 32. Primary wait (0).
	db 32	;   Escape note value.
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (127).
	db 2	;   Escape instrument value.
	db 127	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.

.Justaddcream_Subsong0_Track17
	db 240	; New instrument (0). Note reference (0). New wait (15).
	db 0	;   Escape instrument value.
	db 15	;   Escape wait value.
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 192	; Note reference (0). New wait (13).
	db 13	;   Escape wait value.
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 0	; Note reference (0). 
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 192	; Note reference (0). New wait (11).
	db 11	;   Escape wait value.
	db 222	; Primary instrument (3). New escaped note: 19. New wait (127).
	db 19	;   Escape note value.
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track18
	db 12	; Note with effects flag.
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 240	; New instrument (0). Note reference (0). New wait (5).
	db 0	;   Escape instrument value.
	db 5	;   Escape wait value.
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 0	; Note reference (0). 
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 0	; Note reference (0). 
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 128	; Note reference (0). Secondary wait (1).
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 128	; Note reference (0). Secondary wait (1).
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 128	; Note reference (0). Secondary wait (1).
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 128	; Note reference (0). Secondary wait (1).
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 128	; Note reference (0). Secondary wait (1).
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 128	; Note reference (0). Secondary wait (1).
	db 222	; Primary instrument (3). New escaped note: 24. New wait (2).
	db 24	;   Escape note value.
	db 2	;   Escape wait value.
	db 29	; Effect only. 
	db 244	;    Pitch down: 4096.
	db 0	;    Pitch, LSB.
	db 16	;    Pitch, MSB.
	db 128	; Note reference (0). Secondary wait (1).
	db 12	; Note with effects flag.
	db 94	; Primary instrument (3). New escaped note: 22. Primary wait (0).
	db 22	;   Escape note value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 244	;    Pitch up: 3072.
	db 0	;    Pitch, LSB.
	db 140	;    Pitch, MSB.
	db 30	; Primary instrument (3). New escaped note: 23. 
	db 23	;   Escape note value.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 244	;    Pitch down: 4096.
	db 0	;    Pitch, LSB.
	db 16	;    Pitch, MSB.

.Justaddcream_Subsong0_Track19
	db 221	; Effect only. New wait (23).
	db 23	;   Escape wait value.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 244	;    Pitch down: 256.
	db 0	;    Pitch, LSB.
	db 1	;    Pitch, MSB.

.Justaddcream_Subsong0_Track20
	db 240	; New instrument (0). Note reference (0). New wait (53).
	db 0	;   Escape instrument value.
	db 53	;   Escape wait value.
	db 12	; Note with effects flag.
	db 177	; New instrument (1). Note reference (1). Secondary wait (1).
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (3).
	db 2	;   Escape instrument value.
	db 3	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 193	; Note reference (1). New wait (127).
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track21
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 22	;    Arpeggio table effect 1.
	db 221	; Effect only. New wait (2).
	db 2	;   Escape wait value.
	db 12	; Note with effects flag.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 38	;    Arpeggio table effect 2.
	db 162	; Secondary instrument (4). Note reference (2). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 22	;    Arpeggio table effect 1.
	db 12	; Note with effects flag.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 38	;    Arpeggio table effect 2.
	db 162	; Secondary instrument (4). Note reference (2). Secondary wait (1).
	db 22	;    Arpeggio table effect 1.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 98	; Secondary instrument (4). Note reference (2). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 22	;    Arpeggio table effect 1.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 54	;    Arpeggio table effect 3.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 98	; Secondary instrument (4). Note reference (2). Primary wait (0).
	db 29	; Effect only. 
	db 12	; Note with effects flag.
	db 227	; Secondary instrument (4). Note reference (3). New wait (3).
	db 3	;   Escape wait value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 101	; Secondary instrument (4). Note reference (5). Primary wait (0).
	db 22	;    Arpeggio table effect 1.
	db 221	; Effect only. New wait (2).
	db 2	;   Escape wait value.
	db 12	; Note with effects flag.
	db 229	; Secondary instrument (4). Note reference (5). New wait (3).
	db 3	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 162	; Secondary instrument (4). Note reference (2). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 22	;    Arpeggio table effect 1.
	db 12	; Note with effects flag.
	db 224	; Secondary instrument (4). Note reference (0). New wait (127).
	db 127	;   Escape wait value.
	db 54	;    Arpeggio table effect 3.

.Justaddcream_Subsong0_Track22
	db 224	; Secondary instrument (4). Note reference (0). New wait (3).
	db 3	;   Escape wait value.
	db 227	;    Volume effect, with inverted volume: 14.
	db 9	;    Pitch table effect 0.
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 162	; Secondary instrument (4). Note reference (2). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 22	;    Arpeggio table effect 1.
	db 12	; Note with effects flag.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 38	;    Arpeggio table effect 2.
	db 162	; Secondary instrument (4). Note reference (2). Secondary wait (1).
	db 22	;    Arpeggio table effect 1.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 98	; Secondary instrument (4). Note reference (2). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 22	;    Arpeggio table effect 1.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 54	;    Arpeggio table effect 3.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 98	; Secondary instrument (4). Note reference (2). Primary wait (0).
	db 221	; Effect only. New wait (2).
	db 2	;   Escape wait value.
	db 12	; Note with effects flag.
	db 227	; Secondary instrument (4). Note reference (3). New wait (3).
	db 3	;   Escape wait value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 101	; Secondary instrument (4). Note reference (5). Primary wait (0).
	db 22	;    Arpeggio table effect 1.
	db 221	; Effect only. New wait (2).
	db 2	;   Escape wait value.
	db 12	; Note with effects flag.
	db 229	; Secondary instrument (4). Note reference (5). New wait (3).
	db 3	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 162	; Secondary instrument (4). Note reference (2). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 22	;    Arpeggio table effect 1.
	db 224	; Secondary instrument (4). Note reference (0). New wait (127).
	db 127	;   Escape wait value.
	db 54	;    Arpeggio table effect 3.

.Justaddcream_Subsong0_Track23
	db 12	; Note with effects flag.
	db 127	; New instrument (7). Same escaped note: 63. Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 9	;    Pitch table effect 0.
	db 244	;    Pitch up: 256.
	db 0	;    Pitch, LSB.
	db 129	;    Pitch, MSB.
	db 78	; New escaped note: 64. Primary wait (0).
	db 64	;   Escape note value.
	db 72	; Note reference (8). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 127	; New instrument (8). Same escaped note: 64. Primary wait (0).
	db 8	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 187	; New instrument (7). Note reference (11). Secondary wait (1).
	db 7	;   Escape instrument value.
	db 72	; Note reference (8). Primary wait (0).
	db 12	; Note with effects flag.
	db 123	; New instrument (8). Note reference (11). Primary wait (0).
	db 8	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 181	; New instrument (7). Note reference (5). Secondary wait (1).
	db 7	;   Escape instrument value.
	db 72	; Note reference (8). Primary wait (0).
	db 12	; Note with effects flag.
	db 117	; New instrument (8). Note reference (5). Primary wait (0).
	db 8	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 117	; New instrument (7). Note reference (5). Primary wait (0).
	db 7	;   Escape instrument value.
	db 120	; New instrument (8). Note reference (8). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 122	; New instrument (7). Note reference (10). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 244	;    Pitch up: 512.
	db 0	;    Pitch, LSB.
	db 130	;    Pitch, MSB.
	db 69	; Note reference (5). Primary wait (0).
	db 157	; Effect only. Secondary wait (1).
	db 24	;    Pitch table effect 1.
	db 75	; Note reference (11). Primary wait (0).
	db 8	;    Pitch table effect 0.
	db 93	; Effect only. Primary wait (0).
	db 244	;    Pitch down: 1280.
	db 0	;    Pitch, LSB.
	db 5	;    Pitch, MSB.
	db 12	; Note with effects flag.
	db 117	; New instrument (8). Note reference (5). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 24	;    Pitch table effect 1.
	db 75	; Note reference (11). Primary wait (0).
	db 8	;    Pitch table effect 0.
	db 157	; Effect only. Secondary wait (1).
	db 244	;    Pitch down: 1280.
	db 0	;    Pitch, LSB.
	db 5	;    Pitch, MSB.
	db 119	; New instrument (7). Note reference (7). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 66	; Note reference (2). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 123	; New instrument (8). Note reference (11). Primary wait (0).
	db 8	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 71	; Note reference (7). Primary wait (0).
	db 114	; New instrument (7). Note reference (2). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 72	; Note reference (8). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 119	; New instrument (8). Note reference (7). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 66	; Note reference (2). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 115	; New instrument (7). Note reference (3). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 24	;    Pitch table effect 1.
	db 120	; New instrument (8). Note reference (8). Primary wait (0).
	db 8	;   Escape instrument value.
	db 119	; New instrument (7). Note reference (7). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 8	;    Pitch table effect 0.
	db 12	; Note with effects flag.
	db 115	; New instrument (8). Note reference (3). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 24	;    Pitch table effect 1.
	db 115	; New instrument (7). Note reference (3). Primary wait (0).
	db 7	;   Escape instrument value.
	db 119	; New instrument (8). Note reference (7). Primary wait (0).
	db 8	;   Escape instrument value.
	db 8	;    Pitch table effect 0.
	db 119	; New instrument (7). Note reference (7). Primary wait (0).
	db 7	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 115	; New instrument (8). Note reference (3). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 24	;    Pitch table effect 1.
	db 115	; New instrument (7). Note reference (3). Primary wait (0).
	db 7	;   Escape instrument value.
	db 119	; New instrument (8). Note reference (7). Primary wait (0).
	db 8	;   Escape instrument value.
	db 8	;    Pitch table effect 0.
	db 12	; Note with effects flag.
	db 114	; New instrument (7). Note reference (2). Primary wait (0).
	db 7	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 136	; Note reference (8). Secondary wait (1).
	db 114	; New instrument (8). Note reference (2). Primary wait (0).
	db 8	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 242	; New instrument (7). Note reference (2). New wait (2).
	db 7	;   Escape instrument value.
	db 2	;   Escape wait value.
	db 24	;    Pitch table effect 1.
	db 120	; New instrument (8). Note reference (8). Primary wait (0).
	db 8	;   Escape instrument value.
	db 12	; Note with effects flag.
	db 117	; New instrument (7). Note reference (5). Primary wait (0).
	db 7	;   Escape instrument value.
	db 8	;    Pitch table effect 0.
	db 12	; Note with effects flag.
	db 50	; New instrument (8). Note reference (2). 
	db 8	;   Escape instrument value.
	db 24	;    Pitch table effect 1.
	db 12	; Note with effects flag.
	db 126	; New instrument (7). New escaped note: 58. Primary wait (0).
	db 58	;   Escape note value.
	db 7	;   Escape instrument value.
	db 9	;    Pitch table effect 0.
	db 244	;    Pitch up: 384.
	db 128	;    Pitch, LSB.
	db 129	;    Pitch, MSB.
	db 74	; Note reference (10). Primary wait (0).
	db 157	; Effect only. Secondary wait (1).
	db 24	;    Pitch table effect 1.
	db 72	; Note reference (8). Primary wait (0).
	db 8	;    Pitch table effect 0.
	db 12	; Note with effects flag.
	db 122	; New instrument (8). Note reference (10). Primary wait (0).
	db 8	;   Escape instrument value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 24	;    Pitch table effect 1.
	db 178	; New instrument (7). Note reference (2). Secondary wait (1).
	db 7	;   Escape instrument value.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.
	db 244	;    Pitch down: 1536.
	db 0	;    Pitch, LSB.
	db 6	;    Pitch, MSB.

.Justaddcream_Subsong0_Track24
	db 12	; Note with effects flag.
	db 212	; Primary instrument (3). Note reference (4). New wait (2).
	db 2	;   Escape wait value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 6	;    Arpeggio table effect 0.
	db 112	; New instrument (0). Note reference (0). Primary wait (0).
	db 0	;   Escape instrument value.
	db 86	; Primary instrument (3). Note reference (6). Primary wait (0).
	db 64	; Note reference (0). Primary wait (0).
	db 84	; Primary instrument (3). Note reference (4). Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 19. Primary wait (0).
	db 19	;   Escape note value.
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 94	; Primary instrument (3). New escaped note: 24. Primary wait (0).
	db 24	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 30	; Primary instrument (3). New escaped note: 26. 
	db 26	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 14. Primary wait (0).
	db 14	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 158	; Primary instrument (3). New escaped note: 26. Secondary wait (1).
	db 26	;   Escape note value.
	db 95	; Primary instrument (3). Same escaped note: 26. Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 24. Primary wait (0).
	db 24	;   Escape note value.
	db 158	; Primary instrument (3). New escaped note: 26. Secondary wait (1).
	db 26	;   Escape note value.
	db 158	; Primary instrument (3). New escaped note: 28. Secondary wait (1).
	db 28	;   Escape note value.
	db 128	; Note reference (0). Secondary wait (1).
	db 30	; Primary instrument (3). New escaped note: 29. 
	db 29	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 17. Primary wait (0).
	db 17	;   Escape note value.
	db 64	; Note reference (0). Primary wait (0).
	db 158	; Primary instrument (3). New escaped note: 29. Secondary wait (1).
	db 29	;   Escape note value.
	db 95	; Primary instrument (3). Same escaped note: 29. Primary wait (0).
	db 94	; Primary instrument (3). New escaped note: 24. Primary wait (0).
	db 24	;   Escape note value.
	db 158	; Primary instrument (3). New escaped note: 29. Secondary wait (1).
	db 29	;   Escape note value.
	db 25	; Primary instrument (3). Note reference (9). 
	db 64	; Note reference (0). Primary wait (0).
	db 222	; Primary instrument (3). New escaped note: 24. New wait (3).
	db 24	;   Escape note value.
	db 3	;   Escape wait value.
	db 159	; Primary instrument (3). Same escaped note: 24. Secondary wait (1).
	db 192	; Note reference (0). New wait (6).
	db 6	;   Escape wait value.
	db 86	; Primary instrument (3). Note reference (6). Primary wait (0).
	db 148	; Primary instrument (3). Note reference (4). Secondary wait (1).
	db 222	; Primary instrument (3). New escaped note: 19. New wait (127).
	db 19	;   Escape note value.
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track25
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 22	;    Arpeggio table effect 1.
	db 221	; Effect only. New wait (2).
	db 2	;   Escape wait value.
	db 12	; Note with effects flag.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 38	;    Arpeggio table effect 2.
	db 162	; Secondary instrument (4). Note reference (2). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 22	;    Arpeggio table effect 1.
	db 12	; Note with effects flag.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 38	;    Arpeggio table effect 2.
	db 162	; Secondary instrument (4). Note reference (2). Secondary wait (1).
	db 22	;    Arpeggio table effect 1.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 2	;    Volume effect, with inverted volume: 0.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 160	; Secondary instrument (4). Note reference (0). Secondary wait (1).
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 98	; Secondary instrument (4). Note reference (2). Primary wait (0).
	db 3	;    Volume effect, with inverted volume: 0.
	db 22	;    Arpeggio table effect 1.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 54	;    Arpeggio table effect 3.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 99	; Secondary instrument (4). Note reference (3). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 12	; Note with effects flag.
	db 96	; Secondary instrument (4). Note reference (0). Primary wait (0).
	db 38	;    Arpeggio table effect 2.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 163	; Secondary instrument (4). Note reference (3). Secondary wait (1).
	db 3	;    Volume effect, with inverted volume: 0.
	db 54	;    Arpeggio table effect 3.
	db 98	; Secondary instrument (4). Note reference (2). Primary wait (0).
	db 29	; Effect only. 
	db 12	; Note with effects flag.
	db 227	; Secondary instrument (4). Note reference (3). New wait (3).
	db 3	;   Escape wait value.
	db 3	;    Volume effect, with inverted volume: 0.
	db 38	;    Arpeggio table effect 2.
	db 12	; Note with effects flag.
	db 101	; Secondary instrument (4). Note reference (5). Primary wait (0).
	db 22	;    Arpeggio table effect 1.
	db 221	; Effect only. New wait (2).
	db 2	;   Escape wait value.
	db 12	; Note with effects flag.
	db 101	; Secondary instrument (4). Note reference (5). Primary wait (0).
	db 82	;    Volume effect, with inverted volume: 5.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 165	; Secondary instrument (4). Note reference (5). Secondary wait (1).
	db 66	;    Volume effect, with inverted volume: 4.
	db 12	; Note with effects flag.
	db 101	; Secondary instrument (4). Note reference (5). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 93	; Effect only. Primary wait (0).
	db 12	; Note with effects flag.
	db 165	; Secondary instrument (4). Note reference (5). Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 101	; Secondary instrument (4). Note reference (5). Primary wait (0).
	db 2	;    Volume effect, with inverted volume: 0.
	db 221	; Effect only. New wait (127).
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track26
	db 12	; Note with effects flag.
	db 193	; Note reference (1). New wait (3).
	db 3	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 49	; New instrument (2). Note reference (1). 
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 49	; New instrument (1). Note reference (1). 
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 177	; New instrument (2). Note reference (1). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 49	; New instrument (1). Note reference (1). 
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 129	; Note reference (1). Secondary wait (1).
	db 12	; Note with effects flag.
	db 49	; New instrument (2). Note reference (1). 
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 49	; New instrument (1). Note reference (1). 
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 177	; New instrument (2). Note reference (1). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 177	; New instrument (1). Note reference (1). Secondary wait (1).
	db 1	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 1	; Note reference (1). 
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 49	; New instrument (2). Note reference (1). 
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 49	; New instrument (1). Note reference (1). 
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 177	; New instrument (2). Note reference (1). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 49	; New instrument (1). Note reference (1). 
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 193	; Note reference (1). New wait (9).
	db 9	;   Escape wait value.
	db 12	; Note with effects flag.
	db 177	; New instrument (2). Note reference (1). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 193	; Note reference (1). New wait (127).
	db 127	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.

.Justaddcream_Subsong0_Track27
	db 119	; New instrument (11). Note reference (7). Primary wait (0).
	db 11	;   Escape instrument value.
	db 72	; Note reference (8). Primary wait (0).
	db 12	; Note with effects flag.
	db 117	; New instrument (9). Note reference (5). Primary wait (0).
	db 9	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 74	; Note reference (10). Primary wait (0).
	db 117	; New instrument (10). Note reference (5). Primary wait (0).
	db 10	;   Escape instrument value.
	db 114	; New instrument (9). Note reference (2). Primary wait (0).
	db 9	;   Escape instrument value.
	db 122	; New instrument (10). Note reference (10). Primary wait (0).
	db 10	;   Escape instrument value.
	db 117	; New instrument (11). Note reference (5). Primary wait (0).
	db 11	;   Escape instrument value.
	db 117	; New instrument (9). Note reference (5). Primary wait (0).
	db 9	;   Escape instrument value.
	db 74	; Note reference (10). Primary wait (0).
	db 117	; New instrument (11). Note reference (5). Primary wait (0).
	db 11	;   Escape instrument value.
	db 114	; New instrument (9). Note reference (2). Primary wait (0).
	db 9	;   Escape instrument value.
	db 122	; New instrument (10). Note reference (10). Primary wait (0).
	db 10	;   Escape instrument value.
	db 117	; New instrument (11). Note reference (5). Primary wait (0).
	db 11	;   Escape instrument value.
	db 114	; New instrument (10). Note reference (2). Primary wait (0).
	db 10	;   Escape instrument value.
	db 122	; New instrument (11). Note reference (10). Primary wait (0).
	db 11	;   Escape instrument value.
	db 69	; Note reference (5). Primary wait (0).
	db 66	; Note reference (2). Primary wait (0).
	db 119	; New instrument (9). Note reference (7). Primary wait (0).
	db 9	;   Escape instrument value.
	db 66	; Note reference (2). Primary wait (0).
	db 114	; New instrument (11). Note reference (2). Primary wait (0).
	db 11	;   Escape instrument value.
	db 120	; New instrument (9). Note reference (8). Primary wait (0).
	db 9	;   Escape instrument value.
	db 114	; New instrument (10). Note reference (2). Primary wait (0).
	db 10	;   Escape instrument value.
	db 71	; Note reference (7). Primary wait (0).
	db 119	; New instrument (9). Note reference (7). Primary wait (0).
	db 9	;   Escape instrument value.
	db 66	; Note reference (2). Primary wait (0).
	db 119	; New instrument (10). Note reference (7). Primary wait (0).
	db 10	;   Escape instrument value.
	db 120	; New instrument (9). Note reference (8). Primary wait (0).
	db 9	;   Escape instrument value.
	db 114	; New instrument (10). Note reference (2). Primary wait (0).
	db 10	;   Escape instrument value.
	db 119	; New instrument (11). Note reference (7). Primary wait (0).
	db 11	;   Escape instrument value.
	db 120	; New instrument (10). Note reference (8). Primary wait (0).
	db 10	;   Escape instrument value.
	db 242	; New instrument (11). Note reference (2). New wait (127).
	db 11	;   Escape instrument value.
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track28
	db 114	; New instrument (11). Note reference (2). Primary wait (0).
	db 11	;   Escape instrument value.
	db 69	; Note reference (5). Primary wait (0).
	db 12	; Note with effects flag.
	db 126	; New instrument (9). New escaped note: 64. Primary wait (0).
	db 64	;   Escape note value.
	db 9	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 75	; Note reference (11). Primary wait (0).
	db 127	; New instrument (10). Same escaped note: 64. Primary wait (0).
	db 10	;   Escape instrument value.
	db 122	; New instrument (9). Note reference (10). Primary wait (0).
	db 9	;   Escape instrument value.
	db 123	; New instrument (10). Note reference (11). Primary wait (0).
	db 10	;   Escape instrument value.
	db 127	; New instrument (11). Same escaped note: 64. Primary wait (0).
	db 11	;   Escape instrument value.
	db 127	; New instrument (9). Same escaped note: 64. Primary wait (0).
	db 9	;   Escape instrument value.
	db 75	; Note reference (11). Primary wait (0).
	db 127	; New instrument (11). Same escaped note: 64. Primary wait (0).
	db 11	;   Escape instrument value.
	db 122	; New instrument (9). Note reference (10). Primary wait (0).
	db 9	;   Escape instrument value.
	db 123	; New instrument (10). Note reference (11). Primary wait (0).
	db 10	;   Escape instrument value.
	db 127	; New instrument (11). Same escaped note: 64. Primary wait (0).
	db 11	;   Escape instrument value.
	db 122	; New instrument (10). Note reference (10). Primary wait (0).
	db 10	;   Escape instrument value.
	db 123	; New instrument (11). Note reference (11). Primary wait (0).
	db 11	;   Escape instrument value.
	db 79	; Same escaped note: 64. Primary wait (0).
	db 74	; Note reference (10). Primary wait (0).
	db 114	; New instrument (9). Note reference (2). Primary wait (0).
	db 9	;   Escape instrument value.
	db 74	; Note reference (10). Primary wait (0).
	db 122	; New instrument (11). Note reference (10). Primary wait (0).
	db 11	;   Escape instrument value.
	db 117	; New instrument (9). Note reference (5). Primary wait (0).
	db 9	;   Escape instrument value.
	db 122	; New instrument (10). Note reference (10). Primary wait (0).
	db 10	;   Escape instrument value.
	db 66	; Note reference (2). Primary wait (0).
	db 114	; New instrument (9). Note reference (2). Primary wait (0).
	db 9	;   Escape instrument value.
	db 74	; Note reference (10). Primary wait (0).
	db 114	; New instrument (11). Note reference (2). Primary wait (0).
	db 11	;   Escape instrument value.
	db 117	; New instrument (9). Note reference (5). Primary wait (0).
	db 9	;   Escape instrument value.
	db 122	; New instrument (10). Note reference (10). Primary wait (0).
	db 10	;   Escape instrument value.
	db 114	; New instrument (11). Note reference (2). Primary wait (0).
	db 11	;   Escape instrument value.
	db 117	; New instrument (10). Note reference (5). Primary wait (0).
	db 10	;   Escape instrument value.
	db 250	; New instrument (11). Note reference (10). New wait (127).
	db 11	;   Escape instrument value.
	db 127	;   Escape wait value.

.Justaddcream_Subsong0_Track29
	db 12	; Note with effects flag.
	db 193	; Note reference (1). New wait (3).
	db 3	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 49	; New instrument (2). Note reference (1). 
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 49	; New instrument (1). Note reference (1). 
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 177	; New instrument (2). Note reference (1). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 49	; New instrument (1). Note reference (1). 
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 129	; Note reference (1). Secondary wait (1).
	db 12	; Note with effects flag.
	db 49	; New instrument (2). Note reference (1). 
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 49	; New instrument (1). Note reference (1). 
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 177	; New instrument (2). Note reference (1). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 177	; New instrument (1). Note reference (1). Secondary wait (1).
	db 1	;   Escape instrument value.
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 1	; Note reference (1). 
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 49	; New instrument (2). Note reference (1). 
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 49	; New instrument (1). Note reference (1). 
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 177	; New instrument (2). Note reference (1). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 241	; New instrument (1). Note reference (1). New wait (5).
	db 1	;   Escape instrument value.
	db 5	;   Escape wait value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 241	; New instrument (2). Note reference (1). New wait (3).
	db 2	;   Escape instrument value.
	db 3	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 177	; New instrument (1). Note reference (1). Secondary wait (1).
	db 1	;   Escape instrument value.
	db 2	;    Volume effect, with inverted volume: 0.
	db 12	; Note with effects flag.
	db 129	; Note reference (1). Secondary wait (1).
	db 34	;    Volume effect, with inverted volume: 2.
	db 12	; Note with effects flag.
	db 177	; New instrument (2). Note reference (1). Secondary wait (1).
	db 2	;   Escape instrument value.
	db 18	;    Volume effect, with inverted volume: 1.
	db 12	; Note with effects flag.
	db 65	; Note reference (1). Primary wait (0).
	db 50	;    Volume effect, with inverted volume: 3.
	db 12	; Note with effects flag.
	db 193	; Note reference (1). New wait (127).
	db 127	;   Escape wait value.
	db 18	;    Volume effect, with inverted volume: 1.

.Justaddcream_Subsong0_Track30
	db 205	; New wait (127).
	db 127	;   Escape wait value.

.Justaddcream_Subsong0DisarkByteRegionEnd5
; The note indexes.
.Justaddcream_Subsong0_NoteIndexes
.Justaddcream_Subsong0DisarkByteRegionStart6
	db 48	; Note for index 0.
	db 12	; Note for index 1.
	db 55	; Note for index 2.
	db 53	; Note for index 3.
	db 21	; Note for index 4.
	db 60	; Note for index 5.
	db 33	; Note for index 6.
	db 52	; Note for index 7.
	db 57	; Note for index 8.
	db 31	; Note for index 9.
	db 59	; Note for index 10.
	db 62	; Note for index 11.
.Justaddcream_Subsong0DisarkByteRegionEnd6

