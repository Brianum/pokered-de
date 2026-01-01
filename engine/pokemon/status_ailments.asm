PrintStatusAilment::
	ld a, [de]
	bit PSN, a
	jr nz, .psn
	bit BRN, a
	jr nz, .brn
	bit FRZ, a
	jr nz, .frz
	bit PAR, a
	jr nz, .par
	and SLP_MASK
	ret z
	ld_hli_a_string "SLF"
	ret
.psn
	ld_hli_a_string "GIF"
	ret
.brn
	ld_hli_a_string "BRT"
	ret
.frz
	ld_hli_a_string "GFR"
	ret
.par
	ld_hli_a_string "PAR"
	ret
