//Crab Synth for Megapatch 5
//Original stuff by Valve, QC fixes by Epicplayer

$modelname Synth.mdl
$cdmaterials models/synth

// whole body
$body studio "synth_reference.smd"

//$bbox -30 -50 0 80 50 72
$surfaceprop metal
$opaque

$sequence idle01 "idle01" fps 30 loop ACT_IDLE 5 node "idle"
$sequence idleshake01 "idleshake01" fps 30 ACT_IDLE 1 node "idle"

$sequence alert01 "alert01" fps 30 ACT_STAND 1
$sequence attack1 "attack01" fps 30 ACT_MELEE_ATTACK1 1
$sequence attack2 "attack_ft01" fps 30 ACT_MELEE_ATTACK1 1
$sequence fire01 "fire01" fps 30 ACT_RANGE_ATTACK1 1
$sequence ltturn01 "ltturn01" fps 30 ACT_TURN_LEFT 1 LZR
$sequence rtturn01 "rtturn01" fps 30 ACT_TURN_RIGHT 1 LZR
$sequence run_headthrow "run_headthrow" fps 30 ACT_RUN 1 lx loop
$sequence runtrot "trot01" fps 30 loop  ACT_RUN 1 lx

$sequence runbash "runbash" fps 30  ACT_CHARGE_HITLEFT 1 lx
$sequence runthrow "run_headthrow" fps 30  ACT_CHARGE_HITRIGHT 1 lx
$sequence chargelswipe "chargeltswipe01" fps 30  ACT_CHARGE_HITLEFT 1 alignto "idle01" walkframe 19 LX walkframe 29 LX walkframe 56 LX
$sequence chargerswipe "chargeltswipe01" fps 30  frame 42 68 ACT_CHARGE_HITRIGHT 1 lx alignto "idle01"

$sequence walk01 "walk01" fps 30 loop  ACT_WALK 1 LX LY
$sequence walk01_gunup "walk01_gunup" fps 30 loop  ACT_WALK 1 lx
$sequence walkback01 "walkback01" fps 30 loop  ACT_STEP_BACK 1 lx
$sequence diesimple "bodythrow01" fps 20 ACT_DIESIMPLE 1 frame 0 43 X



$sequence chargeready "charge01" {
	fps 30 frame 0 16 
	ACT_CHARGE_START 1 
	alignto "idle01" 
	transition "idle" "precharge"
}

$sequence chargestart "charge01" {
	fps 30 frame 16 30  
	ACT_CHARGE_START_MOVE 1 
	alignto "idle01" 
	transition "precharge" "charge" lx
	}

$sequence chargeloop "charge01" {
	fps 30 loop frame 30 42  
	ACT_CHARGE_LOOP 1 
	alignto "idle01"
	node "charge" lx
	}

$sequence run01 "run01" {
	fps 40 loop  ACT_RUN 4
	alignto "idle01"
	node "charge" lx
	}

$sequence chargestop "charge01" {
	fps 30 frame 54 67  
	ACT_CHARGE_MOVE_END 1 
	alignto "idle01"
	transition "charge" "postcharge" lx
	}

$sequence chargeend "charge01" {
	fps 30 frame 67 93 
	ACT_CHARGE_END 1 
	alignto "idle01"
	transition "postcharge" "idle"
	}


//$sequence runtrot "trot01" fps 60 loop  ACT_CHARGE_LOOP 1
//$sequence chargefswipe "chargeltswipe01" fps 30  ACT_CHARGE_END 1

$sequence bodythrow "bodythrow01" fps 30 ACT_BODY_THROW 1 walkframe 13 LX walkframe 26 lx walkframe 115 lx

$animation walk_S	"walkbackcyc01" fps 30  startloop 19 alignto "idle01" lx
$animation walk_SE	"walkback45rt01" fps 30 lx LY startloop 20 rotate 6.1 alignto "idle01"
$animation walk_E	"walkleft01" fps 30 LY alignto "idle01"
$animation walk_NE	"walk45ftrt01" fps 30 lx LY rotate -2.09 alignto "idle01"
$animation walk_N	"walk01_gunup" fps 30 lx alignto "idle01"
$animation walk_NW	"walk45ftlt01" fps 30 lx LY rotate 3.05 alignto "idle01"
$animation walk_W	"walkright01" fps 30 LY startloop 26 alignto "idle01"
$animation walk_SW	"walkback45lt01" fps 30 lx LY startloop 19 rotate -7.82 alignto "idle01"


$sequence walkall {
	walk_s walk_se walk_e walk_ne walk_n walk_nw walk_w walk_sw walk_s
	blendwidth 9 blend ZR -180 180
}

