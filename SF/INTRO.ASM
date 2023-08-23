
; disable player's movement and wobble:
	setfadedown	quick
	mapwaitfade
	setbg	intro
	initbg

	start_65816
	a16
	stz	lastplayz
	stz	pviewposz
	ldx	playpt
	stz	al_worldz,x
	a8
	end_65816

	mapcode_jsl	initblack_l
	setvar		stayblack,10

	setfadeup	quick

	mapwait	246	800

	start_65816
	a8
	lda	playerflymode
	and	#~pfm_wobble
	sta	playerflymode

	lda	pshipflags
	ora	#psf_noctrl!psf_nofire
	sta	pshipflags

	end_65816

; NINTENDO PRESENTS
	IFEQ	cesdemo
	textpath 0000,-3000,-150,4000,axl,dintro1,14,42
	textpath 0000,3000,0150,4000,presents,dintro1,14,-32
	ELSEIF
; CES DEMO VERSION
	textpath 0000,-3000,-150,4000,ces,dintro1,14,42
	textpath 0000,3000,0150,4000,demo,dintro1,14,42
	ENDC

	mapwait	5000
	mapmsg 143
	mapwait	3000
	mapmsg 144
	mapwait 2500


	mapobj	1000,50,-400,-700,my_demo,playerdown2intro_Istrat
	mapmsg 145
	mapobj	1000,50,-400,-700,my_demo,playerdown3intro_Istrat
	mapwait 2500
	mapmsg 146
	mapwait 3000
	mapmsg 147 
	mapwait 3000
	mapmsg 148

	mapwait	3000

	mapobj	0000,0000,0000,-400,f_dragon,boss7intro_Istrat
	mapwait 5000
	mapmsg	149
	mapwait	2500
	mapmsg	150
	mapwait 3000
	mapmsg	151

	mapwait 6500
	mapmsg	152
	mapobj	0000,0000,-800,-400,ship_5,boss7intro_Istrat

	mapwait	15000
	mapobj	600,-400,-800,2000,zaco_a,zacointro_Istrat
	mapobj	600,400,-800,2000,zaco_a,zacointro_Istrat

	mapobj	400,-400,-800,2000,zaco_5,zacointro_Istrat
	mapobj	400,400,-800,2000,zaco_5,zacointro_Istrat
	mapobj	400,-400,-800,2000,zaco_5,zacointro_Istrat
	mapobj	400,400,-800,2000,zaco_5,zacointro_Istrat
	mapobj	400,-400,-800,2000,zaco_5,zacointro_Istrat
	mapobj	400,400,-800,2000,zaco_5,zacointro_Istrat

	mapobj	400,000,-800,2000,zaco_5,zaco2intro_Istrat

	mapobj	400,-400,-800,2000,zaco_5,zacointro_Istrat
	mapobj	400,400,-800,2000,zaco_5,zacointro_Istrat
	mapobj	400,-400,-800,2000,zaco_5,zacointro_Istrat
	mapobj	400,400,-800,2000,zaco_5,zacointro_Istrat

;	setvar.b	exitintro,1
	

.lp	mapwait	5000
	mapgoto	.lp



