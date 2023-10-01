
//Conscript.mdl as it appears in the 2003 leak
//Fixed by The One Epicplayer
//fyi face flexes are not fixed as I don't know how to get them working

$modelname "Conscript.mdl"

$model "conscript" "conscript_reference.smd" {

	eyeball "righteye" "Bip01 Head" -1.280842 -5.228160 67.374801 "eyeball_r" 1 4 "iris_unused" 0.68
	eyeball "lefteye" "Bip01 Head" 1.442168 -5.228171 67.344743 "eyeball_l" 1 -4 "iris_unused" 0.68

	eyelid upper_right "conscript_flex" lowerer 1 -0.221 neutral 0  0.071 raiser 2  0.246 split 0.1 eyeball righteye
	eyelid lower_right "conscript_flex" lowerer 3 -0.331 neutral 0 -0.309 raiser 4 -0.165 split 0.1 eyeball righteye
	eyelid upper_left "conscript_flex" lowerer 1 -0.221 neutral 0  0.071 raiser 2  0.246 split -0.1 eyeball lefteye
	eyelid lower_left "conscript_flex" lowerer 3 -0.331 neutral 0 -0.309 raiser 4 -0.165 split -0.1 eyeball lefteye

	mouth 0 "mouth" "Bip01 Head" 0 -1 0		// mouth illumination

	flexfile "conscript_flex" { //Lord forgive me but I must use the decompiled flexes
		defaultflex frame 0
		flex "AU1R" frame 9
		flex "AU1L" frame 10
		flex "AU2R" frame 11
		flex "AU2L" frame 12
		flex "AU4R" frame 13
		flex "AU4L" frame 14
		flex "AU6R" frame 15
		flex "AU6L" frame 16
		flex "AU9R" frame 17
		flex "AU9L" frame 18
		flex "AU38" frame 19
		flex "AU10R" frame 20
		flex "AU10L" frame 21
		flex "AU12R" frame 22
		flex "AU12R" frame 23
		flex "AU12L" frame 24
		flex "AU12L" frame 25
		flex "AU15" frame 26
		flex "AU17R" frame 27
		flex "AU17L" frame 28
		flex "AU25R" frame 29
		flex "AU25L" frame 30
		flex "AU18R" frame 31
		flex "AU18L" frame 32
		flex "AU22R" frame 33
		flex "AU22L" frame 34
		flex "AU20R" frame 35
		flex "AU20L" frame 36
		flex "AU32" frame 37
		flex "AU24" frame 38
		flex "AU31" frame 39
		flex "AU26R" frame 40
		flex "AU26L" frame 41
		flex "AU27R" frame 42
		flex "AU27L" frame 43
	}

	flexcontroller eyelid range 0 1 "right_lid_raiser"
	flexcontroller eyelid range 0 1 "left_lid_raiser"
	flexcontroller eyelid range 0 1 "right_lid_tightener"
	flexcontroller eyelid range 0 1 "left_lid_tightener"
	flexcontroller eyelid range 0 1 "right_lid_droop"
	flexcontroller eyelid range 0 1 "left_lid_droop"
	flexcontroller eyelid range 0 1 "blink"
	flexcontroller brow range 0 1 "right_inner_raiser"
	flexcontroller brow range 0 1 "left_inner_raiser"
	flexcontroller brow range 0 1 "right_outer_raiser"
	flexcontroller brow range 0 1 "left_outer_raiser"
	flexcontroller brow range 0 1 "right_lowerer"
	flexcontroller brow range 0 1 "left_lowerer"
	flexcontroller nose range 0 1 "right_cheek_raiser"
	flexcontroller nose range 0 1 "left_cheek_raiser"
	flexcontroller nose range 0 1 "wrinkler"
	flexcontroller nose range 0 1 "dilator"
	flexcontroller mouth range 0 1 "right_upper_raiser"
	flexcontroller mouth range 0 1 "left_upper_raiser"
	flexcontroller mouth range 0 1 "right_corner_puller"
	flexcontroller mouth range 0 1 "left_corner_puller"
	flexcontroller mouth range 0 1 "corner_depressor"
	flexcontroller mouth range 0 1 "chin_raiser"
	flexcontroller phoneme range 0 1 "right_part"
	flexcontroller phoneme range 0 1 "left_part"
	flexcontroller phoneme range 0 1 "right_puckerer"
	flexcontroller phoneme range 0 1 "left_puckerer"
	flexcontroller phoneme range 0 1 "right_funneler"
	flexcontroller phoneme range 0 1 "left_funneler"
	flexcontroller phoneme range 0 1 "right_stretcher"
	flexcontroller phoneme range 0 1 "left_stretcher"
	flexcontroller phoneme range 0 1 "bite"
	flexcontroller phoneme range 0 1 "presser"
	flexcontroller phoneme range 0 1 "tightener"
	flexcontroller phoneme range 0 1 "jaw_clencher"
	flexcontroller phoneme range 0 1 "jaw_drop"
	flexcontroller phoneme range 0 1 "right_mouth_drop"
	flexcontroller phoneme range 0 1 "left_mouth_drop"
	flexcontroller head range -30 30 "head_rightleft"
	flexcontroller head range -45 20 "head_updown"
	flexcontroller head range -30 30 "head_tilt"
	flexcontroller eyes range -30 30 "eyes_updown"
	flexcontroller eyes range -30 30 "eyes_rightleft"
	flexcontroller arms range 0 1 "arms_updown"
	flexcontroller arms range 0 1 "arms_inout"

	localvar right_lip_suppressor
	localvar left_lip_suppressor
	%upper_right_raiser = right_lid_raiser * (1 - right_lid_droop * 0.8) * (1 - blink)
	%upper_right_neutral = (1 - right_lid_droop * 0.8) * (1 - right_lid_raiser) * (1 - blink)
	%upper_right_lowerer = blink
	%upper_left_raiser = left_lid_raiser * (1 - left_lid_droop * 0.8) * (1 - blink)
	%upper_left_neutral = (1 - left_lid_droop * 0.8) * (1 - left_lid_raiser) * (1 - blink)
	%upper_left_lowerer = blink
	%lower_right_raiser = blink
	%lower_right_neutral = (1 - blink) * (1 - right_lid_tightener * 0.5) * (1 - right_cheek_raiser * 0.25)
	%lower_right_lowerer = 0
	%lower_left_raiser = blink
	%lower_left_neutral = (1 - blink) * (1 - left_lid_tightener * 0.5) * (1 - left_cheek_raiser * 0.25)
	%lower_left_lowerer = 0
	%AU1R = right_inner_raiser * (1 - right_lowerer)
	%AU1L = left_inner_raiser * (1 - left_lowerer)
	%AU2R = right_outer_raiser * (1 - right_lowerer)
	%AU2L = left_outer_raiser * (1 - left_lowerer)
	%AU4R = right_lowerer
	%AU4L = left_lowerer
	%AU6R = right_cheek_raiser
	%AU6L = left_cheek_raiser
	%AU9R = wrinkler
	%AU9L = wrinkler
	%AU38 = dilator
	%AU10R = right_upper_raiser
	%AU10L = left_upper_raiser
	%AU12R = right_corner_puller
	%AU12L = left_corner_puller
	%AU15 = corner_depressor
	%right_lip_suppressor = 1 / (right_part + right_puckerer + right_funneler) * (1 - presser) * (1 - bite)
	%left_lip_suppressor = 1 / (left_part + left_puckerer + left_funneler) * (1 - presser) * (1 - bite)
	%AU25R = right_part * right_part * %right_lip_suppressor
	%AU25L = left_part * left_part * %left_lip_suppressor
	%AU18R = right_puckerer * right_puckerer * %right_lip_suppressor
	%AU18L = left_puckerer * left_puckerer * %left_lip_suppressor
	%AU22R = right_funneler * right_funneler * %right_lip_suppressor
	%AU22L = left_funneler * left_funneler * %left_lip_suppressor
	%AU17R = chin_raiser * (1 - jaw_drop * 0.5) * (1 - bite) * (1 - 0.6 * (%AU25R + %AU18R + %AU22R))
	%AU17L = chin_raiser * (1 - jaw_drop * 0.5) * (1 - bite) * (1 - 0.6 * (%AU25L + %AU18L + %AU22L))
	%AU20R = right_stretcher * (1 - jaw_drop * 0.5)
	%AU20L = left_stretcher * (1 - jaw_drop * 0.5)
	%AU32 = bite
	%AU24 = presser + (1 - presser) * tightener
	%AU31 = jaw_clencher * jaw_clencher / (jaw_clencher + jaw_drop)
	%AU26R = jaw_drop * (1 - right_mouth_drop * (1 - bite)) * jaw_drop / (jaw_clencher + jaw_drop)
	%AU26L = jaw_drop * (1 - left_mouth_drop * (1 - bite)) * jaw_drop / (jaw_clencher + jaw_drop)
	%AU27R = jaw_drop * right_mouth_drop * (1 - bite) * jaw_drop / (jaw_clencher + jaw_drop)
	%AU27L = jaw_drop * left_mouth_drop * (1 - bite) * jaw_drop / (jaw_clencher + jaw_drop)
	%mouth = %AU27R * 0.5 + %AU27L * 0.5 + %AU22R * 0.35 + %AU22L * 0.35 + %AU18R * 0.25 + %AU18L * 0.25 + %AU25R * 0.35 + %AU25L * 0.35 + %AU32 * 0.5
	
}

$illumposition -2.86 -2.366 36.035

$eyeposition 0 0 67

$attachment "eyes" "Bip01 Head" 0.0807 -5.223 67.36 absolute //Needed to make eyes work properly upon recompile
$attachment "mouth" "Bip01 Head" 0.80 5.80 0.15 rotate 0 -80 -90

$cdmaterials models\conscript

$bbox -5.965 -18.626 0.145 10.697 12.907 71.925

$controller 0 "Bip01 Head" XR -60 60

$poseparameter "aim_pitch" -90 90 loop 360

$sequence Idle01 Idle01 ACT_IDLE 20 loop
$sequence Idle02 Idle02 ACT_IDLE 1 fps 15
$sequence Walk Walk ACT_WALK 1 loop walkframe 35 LX
$sequence Run Run ACT_RUN 1 loop walkframe 21 LX
$sequence Die_simple Die_simple ACT_DIESIMPLE 1
$sequence Sm_flinch Sm_flinch ACT_SMALL_FLINCH 1

$sequence shootblendSMG1 shootblendSMG1 shootblendSMG1_2 ACT_RANGE_ATTACK_SMG1 1 blend "XR" -50 50 blendwidth 2 { event 3 0 }

$sequence shootblendAR2 shootblendAR2 shootblendAR2_2 ACT_RANGE_ATTACK_AR2 1 blend "XR" -50 50 blendwidth 2 { event 3 0 }

$sequence shootblendAR2G shootblendAR2G shootblendAR2G_2 ACT_RANGE_ATTACK_AR2_GRENADE 1 blend "XR" -50 50 blendwidth 2 { event 3 0 }

$sequence aim aim aim_2 ACT_CONSCRIPT_AIM 1 blend "XR" -50 50 blendwidth 2 { event 3 0 }

$sequence turn_left turn_left ACT_TURN_LEFT 1
$sequence turn_right turn_right ACT_TURN_RIGHT 1
$sequence draw draw ACT_ARM 1 { event 2 7 }
$sequence disarm disarm ACT_DISARM 1 { event 4 15 }

$sequence reload_low reload_low ACT_RELOAD_LOW 1 { event 1 15 }
$sequence reload_med reload_med ACT_RELOAD_MED 1 { event 1 15 }
$sequence reload reload ACT_RELOAD 1 { event 1 15 }

$sequence cover_crouch_low cover_crouch_low ACT_COVER_LOW 1
$sequence cover_crouch_med cover_crouch_med ACT_COVER_MED 1

$sequence barnaclehit barnaclehit ACT_BARNACLE_HIT 1 fps 15
$sequence barnaclepull barnaclepull ACT_BARNACLE_PULL 1 fps 45 loop
$sequence barnaclecrunch barnaclecrunch ACT_BARNACLE_CHOMP 1 fps 5
$sequence barnaclechew barnaclechew ACT_BARNACLE_CHEW 1 fps 5 loop

$include "conscript_ragdoll_fixed.qci"