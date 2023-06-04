
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

	flexfile "conscript_flex" {
		$include "standardflex.qci"
	}

	$include "facerules_xsi.qci"
}

$illumposition -2.86 -2.366 36.035

$eyeposition 0 0 67

$cdmaterials "models\conscript\"

$bbox -5.965 -18.626 0.145 10.697 12.907 71.925

$controller 0 "Bip01 Head" XR -60 60

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