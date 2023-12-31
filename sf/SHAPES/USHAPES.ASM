

	start_shapes

	ifne	DO_HDR
demoshapes
	endc




;------------------------------------------------------------------------------

s	=	playerW_boxsize
	ifne	DO_HDR
pcolLW		
pcolRW
	IFNE		player_showcolboxes	
	shapehdr	PWcube_P,0,Pcube_F,0,0,0,0,0,0,playerW_boxsize,playerW_boxsize,playerW_boxsize,69,default_c,0,0,0,0,<cube>
	ELSEIF
	shapehdr	0,0,0,0,0,0,0,0,0,playerW_boxsize,playerW_boxsize,playerW_boxsize,69,default_c,0,0,0,0,<cube>
	ENDC

	elseif

PWcube_P
	datahdr
	Pointsb	3
	pb	s,-s,s	;0
	pb	-s,s,s	;1
	pb	s,s,-s	;2
	PointsXb	1
	pb	s,-s,-s	;3
	Pointsb	3
	pb	-s,-s,s	;5
	pb	-s,s,-s	;6
	pb	s,s,s	;7

	EndPoints

	ENDC

;------------------------------------------------------------------------------

s	=	playerB_boxsize
	ifne	DO_HDR
pcolB
	IFNE		player_showcolboxes	
	shapehdr	Pcube_P,0,Pcube_F,0,0,0,0,0,0,playerB_boxsize,playerB_boxsize,playerB_boxsize,69,default_c,0,0,0,0,<cube>
	ELSEIF
	shapehdr	0,0,0,0,0,0,0,0,0,playerB_boxsize,playerB_boxsize,playerB_boxsize,69,default_c,0,0,0,0,<cube>
	ENDC
	elseif


Pcube_P
	datahdr
	Pointsb	3
	pb	s,-s,s	;0
	pb	-s,s,s	;1
	pb	s,s,-s	;2
	PointsXb	1
	pb	s,-s,-s	;3
	Pointsb	3
	pb	-s,-s,s	;5
	pb	-s,s,-s	;6
	pb	s,s,s	;7

	EndPoints
Pcube_F
	Vizis	4
	Viz	5,4,3,0,127,0	;0
	Viz	5,1,6,127,0,0	;1
	Viz	4,6,2,0,0,-127	;2
	Viz	7,0,3,-127,0,0	;3

	Faces
	Face4	18,0,0,127,0,5,4,3,0
	Face4	16,1,127,0,0,5,1,6,4
	Face4	14,2,0,0,-127,4,6,2,3
	Face4	12,3,-127,0,0,7,0,3,2
	Fend
	EndShape

	ENDC

;------------------------------------------------------------------------------

	ifne	DO_HDR
andross	shapehdr TXsquare100_P,0,TXsquare_F2,0,0,0,0,1,0,100,100,100,100,andross_C,0,0,0,0,<fire>
androsshole	shapehdr TXsquare100_P,0,TXsquare_F3,0,0,0,0,2,0,100,100,100,100,androsshole_C,0,0,0,0,<fire>
	endc

	ifeq	1
	ifne	DO_HDR
andross	shapehdr andross_P,0,andross_F,0,0,0,0,1,0,100,100,100,100,andross_C,0,0,0,0,<fire>
androsshole	shapehdr andross_P,0,andross_F,0,0,0,0,2,0,100,100,100,100,androsshole_C,0,0,0,0,<fire>
	elseif

andross_P	POINTSXB	2
	PB	4,4,0	;0
	PB	-4,-4,0	;2
	POINTSB	1
	PB	0,0,0	;4
	ENDPOINTS

	ELSEIF

andross_F 	vizis	1
	viz	2,3,0,0,0,127
	s_sprite	4,0,4
	ENDSHAPE
	endc

	endc
;------------------------------------------------------------------------------

as	=	200

	ifne	DO_HDR
androsscube	shapehdr	androsscube_P,0,androsscube_F,0,0,0,0,0,0,as,as,as,as,andross_C,0,0,0,0,
	elseif


androsscube_P
	PointsXw	4
	pw	as,as,-as	;0
	pw	as,-as,-as	;2
	pw	as,as,as 	;4
	pw	as,-as,as	;6

	EndPoints
androsscube_F
	Vizis	6
	Viz	5,7,6,0,0,127	;0
	Viz	2,3,1,0,0,-127	;1
	Viz	4,6,2,-127,0,0	;2
	Viz	3,7,5,127,0,0	;3
	Viz	2,6,7,0,127,0	;4
	Viz	5,4,0,0,-127,0	;5

	Faces
	Face4	0,0,0,0,127,5,7,6,4
	Face4	0,1,0,0,-127,2,3,1,0
	Face4	0,2,-127,0,0,4,6,2,0
	Face4	0,3,127,0,0,3,7,5,1
	Face4	0,4,0,127,0,2,6,7,3
	Face4	0,5,0,-127,0,5,4,0,1

	Fend
	EndShape

	ENDC




softsprites	=	1	; software sprites off/on (0/1)


	ifne	DO_HDR
nullshape	shapehdr 0,0,0,0,0,0,0,2,0,34,34,36,47,burnmark_C,0,0,0,0,<null>
FOlargeshape	shapehdr 0,0,0,0,0,0,0,0,0,0,0,1000,1000,0,0,0,0,0,<bigshape>
largeshape	shapehdr 0,0,0,0,0,0,0,0,0,0,0,200,200,0,0,0,0,0,<bigshape>
mediumshape	shapehdr 0,0,0,0,0,0,0,0,0,0,0,90,90,0,0,0,0,0,<bigshape>
smallshape	shapehdr 0,0,0,0,0,0,0,0,0,0,0,50,50,0,0,0,0,0,<bigshape>

firesize	=	10
firebreath	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,1+1,0,firesize,firesize,firesize,firesize,fire_C,0,0,0,0,<fire>
fire	shapehdr square_P,0,square_F2,0,0,0,0,1+1,0,34,34,36,47,burnmark_C,0,0,0,0,<fire>
ringlaser	shapehdr square_P,0,square_F3,0,0,0,0,2,0,firesize,firesize,firesize*3,firesize,ringlaser_C,0,0,0,0,<fire>
ironball	shapehdr square_P,0,square_F3,0,0,0,0,2+1,0,firesize,firesize,firesize*3,firesize,ironball_C,boll,0,0,0,<fire>
fireball	shapehdr square_P,0,square_F2,0,0,0,0,1+1,0,firesize,firesize,firesize,firesize,fireball_C,boll,0,0,0,<fire>
Lfireball	shapehdr square_P,0,square_F3,0,0,0,0,2+1,0,firesize,firesize,firesize,firesize,fireball_C,boll,0,0,0,<fire>
smoke	shapehdr square_P,0,square_F3,0,0,0,0,2,0,firesize,firesize,firesize,firesize,smoke_C,0,0,0,0,<smoke>
Lsmoke	shapehdr square_P,0,square_F4,0,0,0,0,3,0,firesize,firesize,firesize,firesize,smoke_C,0,0,0,0,<smoke>
L2smoke	shapehdr square_P,0,square_F4,0,0,0,0,4,0,firesize,firesize,firesize,firesize,smoke_C,0,0,0,0,<smoke>
FOLsmoke	shapehdr square_P,0,square_F4,0,0,0,0,5,0,firesize,firesize,firesize,firesize,smoke_C,0,0,0,0,<smoke>

plane1LW	shapehdr 0,0,0,0,0,0,0,0,0,36,30,98,98,default_c,0,0,0,0,<plane1LW>
plane1RW	shapehdr 0,0,0,0,0,0,0,0,0,36,30,98,98,default_c,0,0,0,0,<plane1RW>
plane1B 	shapehdr 0,0,0,0,0,0,0,0,0,36,30,98,98,default_c,0,0,0,0,<plane1B>

mother1	shapehdr 0,0,0,0,0,0,0,0,0,0,0,0,0,default_c,0,0,0,0,<MOTHER1>
Ssplash	shapehdr square_P,0,square_F,0,0,0,0,2,0,4,4,4,4,splash_C,0,0,0,0,<P EXPLODE>
splash 	shapehdr square_P,0,square_F1,0,0,0,0,3,0,4,4,4,4,splash_C,0,0,0,0,<P EXPLODE>
bouncyball	shapehdr square_P,0,square_F3,0,0,0,0,3,0,4,4,4,4,bouncyball_C,0,0,0,0,<P EXPLODE>
largeplasma	shapehdr square_P,0,square_F3,0,0,0,0,3+1,0,4,4,4,4,bouncyball_C,0,0,0,0,<P EXPLODE>

grabber2	shapehdr square_P,0,square_F5,0,0,0,0,4,0,7,7,7,7,ballandchain_C,0,0,0,0,<P EXPLODE>
nuke    	shapehdr square_P,0,square_F3,0,0,0,0,3,0,4,4,4,4,specialweapon_C,0,0,0,0,<P EXPLODE>

asteroid1	shapehdr square_P,0,square_F4,0,0,0,0,4,0,4,4,4,4,asteroid_C,0,0,0,0,<P EXPLODE>
asteroid2	shapehdr square_P,0,square_F4,0,0,0,0,4,0,4,4,4,4,asteroid2_C,0,0,0,0,<P EXPLODE>

asteroid3	shapehdr square_P,0,square_F2,0,0,0,0,2,0,4,4,4,4,asteroid_C,0,0,0,0,<P EXPLODE>
asteroid4	shapehdr square_P,0,square_F2,0,0,0,0,2,0,4,4,4,4,asteroid2_C,0,0,0,0,<P EXPLODE>
big_meteor	shapehdr txsquare_P,0,txsquare_F,0,0,0,0,6,0,4,4,4,4,big_meteor_C,0,0,0,0,<P EXPLODE>
clasteroid	shapehdr square_P,0,square_F2,0,0,0,0,2,0,4,4,4,4,asteroid_C,0,0,0,0,<P EXPLODE>

blackhole	shapehdr square_P,0,square_F4,0,0,0,0,4,0,4,4,4,4,blackhole_C,0,0,0,0,<P EXPLODE>

ovalbeam 	shapehdr square_P,0,square_F3,0,0,0,0,3,0,4,4,4,4,ovalbeam_c,0,0,0,0,<P EXPLODE>

plasma 	shapehdr square_P,0,square_F2,0,0,0,0,2,0,4,4,4,4,id_5_c,0,0,0,0,<P EXPLODE>
egg    	shapehdr square_P,0,square_F3,0,0,0,0,3,0,6,6,6,6,egg_c,0,0,0,0,<P EXPLODE>

Lflash_0	shapehdr square_P,0,square_F4,0,0,0,0,4,0,4,4,4,4,flash_c,0,0,0,0,<P EXPLODE>
Mflash_0	shapehdr square_P,0,square_F3,0,0,0,0,3,0,4,4,4,4,flash_c,0,0,0,0,<P EXPLODE>
Sflash_0	shapehdr square_P,0,square_F2,0,0,0,0,2,0,4,4,4,4,flash_c,0,0,0,0,<P EXPLODE>

helpball	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,2,0,4,4,4,4,specialweapon_C,0,0,0,0,<P EXPLODE>
Shelpball	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,2,0,10,10,10,4,specialweapon_C,0,0,0,0,<P EXPLODE>
explosion	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,3,0,4,4,4,4,explode_C,0,0,0,0,<P EXPLODE>
explosion2    	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,4,0,4,4,4,4,explode2_C,0,0,0,0,<P EXPLODE>
explosion3    	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,5,0,4,4,4,4,explode3_C,0,0,0,0,<P EXPLODE>
explosion4    	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,6,0,4,4,4,4,explode3_C,0,0,0,0,<P EXPLODE>
explosion5    	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,2,0,4,4,4,4,explode3_C,0,0,0,0,<P EXPLODE>
amoeba1	shapehdr TXsquare_P,0,TXsquare_F,0,-100,0,0,1+1,0,firesize,firesize,firesize,firesize,amoeba_C,0,0,0,0,<fire>
amoeba2	shapehdr TXsquare_P,0,TXsquare_F,0,-100,0,0,2+1,0,firesize,firesize,firesize,firesize,amoeba_C,0,0,0,0,<fire>
PEXPLOD	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,1,0,4,4,4,4,PEXPLOD2S_C,0,0,0,0,<P EXPLODE>
rockbeam 	shapehdr square_P,0,square_F2,0,0,0,0,3,0,4,4,4,4,rockbeam_c,0,0,0,0,<P EXPLODE>
playerbeam	shapehdr square_P,0,square_F3,0,0,0,0,2,0,8*2,5*2,30,4,playerbeam_C,0,0,0,0,<P EXPLODE>
boostshape	shapehdr square_P,0,square_F3,0,0,0,0,1,0,firesize,firesize,firesize,firesize,boost_C,0,0,0,0,<fire>

gamesh	shapehdr TXsquare_P2,0,TXsquare_F2,0,0,0,0,3,0,firesize,firesize,firesize,firesize,game_C,0,0,0,0,<fire>
oversh	shapehdr TXsquare_P2,0,TXsquare_F2,0,0,0,0,3,0,firesize,firesize,firesize,firesize,over_C,0,0,0,0,<fire>

escapee	shapehdr TXsquare_P,0,TXsquare_F2,0,0,0,0,3,0,4,4,4,4,escapee_C,0,0,0,0,<P EXPLODE>


				    
SPEXPLOD	shapehdr TXsquare_P,0,TXsquare_F,0,0,0,0,2,0,4,4,4,4,spark_c,0,0,0,0,<P EXPLODE>
lfDie   	shapehdr LFDIE_P,0,LFDIE_F,0,0,0,0,2,0,4,4,4,4,lfdie_c,0,0,0,0,<P EXPLODE>

	endc




	ifne	DO_HDR
line	shapehdr	line_P,0,line_F,0,0,0,0,0,0,20,20,0,22,line_c,0,0,0,0,<line>
line2	shapehdr	line_P,0,line_F,0,0,0,0,1,0,20,20,0,22,line_c,0,0,0,0,<line>
line3	shapehdr	line_P,0,line_F,0,0,0,0,2,0,20,20,0,22,line_c,0,0,0,0,<line>
laserline	shapehdr	line_P,0,line_F,0,0,0,0,1,0,20,20,20,22,line_c,0,0,0,0,<line>
	elseif			 
line_P
	datahdr
	Pointsb	3
	pb	0,0,0		
	pb	0,10,0	
	pb	-10,10,0	

	EndPoints
line_F

line_f1
	vizis	2
	viz	0,1,2,0,0,127
	viz	2,1,0,0,0,127
	Faces
	Face2	0,0,0,0,0,0,1
	Face2	0,1,0,0,0,0,1
	Fend
	EndShape

	endc


;--Shape file ----- elaser2.asm ----
	ifne	DO_HDR

Welaser2
	shapehdr	elaser2_P,0,elaser2_F,0,0,0,0,2,0,8,5,30,99,white_c,0,0,0,0,<elaser2>
elaser2a
	shapehdr	elaser2_P,0,elaser2_F,0,0,0,0,2,0,2,2,30,99,Ebullet_c,0,0,0,0,<elaser2>

elaser2
	shapehdr	elaser2_P,0,elaser2_F,0,0,0,0,2,0,8,5,30,99,bullet_c,0,0,0,0,<elaser2>
elaser2_s2
	shapehdr	elaser2_Ps2,0,elaser2_Fs2,0,0,0,0,2,0,6,2,70,99,bullet_c,0,0,0,0,<elaser2>
	elseif

mlaser	macro	length of nose, middle, length of tail (70/49/-99)
	pointsb	6
	pb	0,0,\3	;0
	pb	-\4,0,\2	;1
	pb	0,0,\1	;2
	pb	\4,0,\2	;3
	pb	0,-2,\2	;4
	pb	0,2,\2	;5
	endpoints
	endm
	

elaser2_P
	datahdr
	frames	9
	jumptab	.a0a
	jumptab	.a1a
	jumptab	.a2a
	jumptab	.a3a
	jumptab	.a4a
	jumptab	.a5a
	jumptab	.a6a
	jumptab	.a7a
	jumptab	.a8a

.a0a	mlaser	0,-10,0,1
.a1a	mlaser	0,-10,-20,2
.a2a	mlaser	0,-10,-40,3
.a3a	mlaser	0,-10,-60,4
.a4a	mlaser	0,-10,-80,4	; frame 4 = normal laser

.a5a	mlaser	0,0,-60,4
.a6a	mlaser	0,0,-40,4
.a7a	mlaser	0,0,-20,3
.a8a	mlaser	0,0,-20,2

elaser2_ps2
	Pointsb	4
	pb	0,0,-99	;0
	pb	-8,0,49	;1
	pb	0,0,70	;2
	pb	8,0,49	;3

	EndPoints
elaser2_F
	vizis	6
	viz	2,1,0,0,0,127
	viz	0,1,2,0,0,-127
	viz	2,4,0,0,0,-127
	viz	4,2,0,0,0,127
	viz	1,4,3,0,0,-127
	viz	3,4,1,0,0,127
	Faces
	Face4	0,0,0,127,0,2,1,0,3
	Face4	0,1,0,-127,0,0,1,2,3

	Face4	0,2,0,-127,0,2,4,0,5
	Face4	0,3,0,-127,0,5,0,4,2

	Face4	0,4,0,-127,0,1,4,3,5
	Face4	0,5,0,-127,0,5,3,4,1


	Fend
	EndShape


elaser2_Fs2
	vizis	2
	viz	2,1,0,0,0,127
	viz	0,1,2,0,0,-127
	Faces
	Face4	0,0,0,127,0,2,1,0,3
	Face4	0,1,0,-127,0,0,1,2,3

	Fend
	EndShape

	endc


;--Shape file ----- flat 1 poly ----
	ifne	DO_HDR
Smark	shapehdr mark_P,0,mark_F,0,0,0,0,0,0,4,4,4,4,burnmark_C,0,0,0,0,<>
Mmark	shapehdr mark_P,0,mark_F,0,0,0,0,1,0,4,4,4,4,burnmark_C,0,0,0,0,<>
Lmark	shapehdr mark_P,0,mark_F,0,0,0,0,2,0,4,4,4,4,burnmark_C,0,0,0,0,<>
	elseif

mark_P	POINTSB	4
	PB	50,0,50		;0
	PB	-50,0,50	;1
	PB	-50,0,-50	;2
	PB	50,0,-50	;3
	ENDPOINTS


mark_F
	vizis	1
	viz	0,1,2,0,-127,0
	FACES
	FACE4	0,0,0,-127,0,0,1,2,3
	FEND
	ENDSHAPE

	IFEQ	softsprites

LFDIE_F
	vizis	1
	viz	2,3,0,0,0,127
	FACES
	FACE4	0,0,0,0,-127,2,3,0,1
	FEND
	ENDSHAPE

LFDIE_P	POINTSB	4
	PB	4,4,0	;0
	PB	-4,4,0	;1
	PB	-4,-4,0	;2
	PB	4,-4,0	;3
	ENDPOINTS

	ELSEIF

LFDIE_F
	vizis	1
	viz	2,3,0,0,0,127
	s_sprite	4,0,1
	ENDSHAPE

LFDIE_P	POINTSB	5
	PB	4,4,0	;0
	PB	-4,4,0	;1
	PB	-4,-4,0	;2
	PB	4,-4,0	;3
	PB	0,0,0
	ENDPOINTS
	endc




;-----------------------------------------------------
TXSQUARE_F	vizis	1
	viz	2,3,0,0,0,127
	FACES
	FACE4	0,0,0,0,-127,2,3,0,1
	FEND
	ENDSHAPE

TXSQUARE_P	POINTSB	4
	PB	4,4,0	;0
	PB	-4,4,0	;1
	PB	-4,-4,0	;2
	PB	4,-4,0	;3
	ENDPOINTS

TXSQUARE100_P	POINTSXB	2
	PB	100,100,0	;0
	PB	-100,-100,0	;2
	ENDPOINTS



TXSQUARE_P2	POINTSB	4
	PB	32,8,0	;0
	PB	-32,8,0	;1
	PB	-32,-8,0	;2
	PB	32,-8,0	;3
	ENDPOINTS

TXSQUARE_F2	vizis	2
	viz	2,3,0,0,0,127
	viz	0,3,2,0,0,-127
	FACES
	FACE4	0,0,0,0,-127,2,3,0,1
	FACE4	1,1,0,0,127,3,2,1,0
	FEND
	ENDSHAPE


TXSQUARE_F3	vizis	2
	viz	2,3,0,0,0,127
	viz	0,3,2,0,0,-127
	FACES
	FACE4	0,0,0,0,-127,2,3,0,1
	FACE4	1,1,0,0,127,1,0,3,2
	FEND
	ENDSHAPE

;-----------------------------------------------------





	IFEQ	softsprites

SQUARE_F
SQUARE_F1
SQUARE_F2
SQUARE_F3
SQUARE_F4
SQUARE_F5
SQUARE_F6
	vizis	1
	viz	2,3,0,0,0,127
	FACES
	FACE4	0,0,0,0,-127,2,3,0,1
	FEND
	ENDSHAPE

SQUARE_P	POINTSB	4
	PB	4,4,0	;0
	PB	-4,4,0	;1
	PB	-4,-4,0	;2
	PB	4,-4,0	;3
	ENDPOINTS

	ELSEIF

SQUARE_F 	vizis	1
	viz	2,3,0,0,0,127
	s_sprite	4,0,0
	ENDSHAPE


SQUARE_F6
SQUARE_F5
SQUARE_F4
SQUARE_F3
SQUARE_F2
SQUARE_F1 	vizis	1
	viz	2,3,0,0,0,127
	s_sprite	4,0,1
	ENDSHAPE

	ifeq	1
SQUARE_F2 	vizis	1
	viz	2,3,0,0,0,127
	s_sprite	4,0,2
	ENDSHAPE

SQUARE_F3	vizis	1
	viz	2,3,0,0,0,127
	s_sprite	4,0,3
	ENDSHAPE

SQUARE_F4 	vizis	1
	viz	2,3,0,0,0,127
	s_sprite	4,0,4
	ENDSHAPE

SQUARE_F5 	vizis	1
	viz	2,3,0,0,0,127
	s_sprite	4,0,5
	ENDSHAPE

SQUARE_F6 	vizis	1
	viz	2,3,0,0,0,127
	s_sprite	4,0,6
	ENDSHAPE
	endc



SQUARE_P	POINTSB	5
	PB	4,4,0	;0
	PB	-4,4,0	;1
	PB	-4,-4,0	;2
	PB	4,-4,0	;3
	PB	0,0,0
	ENDPOINTS
	endc
	endc


	end_shapes








