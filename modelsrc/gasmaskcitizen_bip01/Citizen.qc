/*
==============================================================================

Citizen

==============================================================================
*/

$modelname Citizen.mdl

$eyeposition 0 0 70

// head controllers
$controller 0 "Bip01 Head" XR -20 20
//$controller mouth "Line01" ZR 0 45
$poseparameter "aim_pitch" -90 90 loop 360

$surfaceprop "flesh"
$mostlyopaque
$attachment "eyes" "Bip01 Head" -0.01 -7.09 67.25 absolute
$attachment "mouth" "Bip01 Head" 0.80 -5.80 -0.15 rotate 0 -80 -90

$cdmaterials models/citizen_17

$model studio "Citizen_reference.smd" {
	eyeball righteye "Bip01 Head" -1.24 -6.38 67.26 "eyeball_r" 1.00 4 "pupil_r" 0.63
	eyeball lefteye "Bip01 Head" 1.22 -6.40 67.24 "eyeball_l" 1.00 -4 "pupil_l" 0.63

	eyelid  upper_right "Citizen_expressions" lowerer 1 -0.15 neutral 0 0.14 raiser 2 0.20 split 0.1 eyeball righteye
	eyelid  lower_right "Citizen_expressions" lowerer 3 -0.31 neutral 0 -0.24 raiser 4 -0.14 split 0.1 eyeball righteye
	eyelid  upper_left "Citizen_expressions" lowerer 1 -0.14 neutral 0 0.16 raiser 2 0.21 split -0.1 eyeball lefteye
	eyelid  lower_left "Citizen_expressions" lowerer 3 -0.29 neutral 0 -0.22 raiser 4 -0.13 split -0.1 eyeball lefteye
	
	mouth 0 "mouth" "Bip01 Head" 0 -1 0		// mouth illumination
	
	flexfile "Citizen_expressions" {
			$include "../Humans/standardflex.qci"
	}
	
	$include "../Humans/facerules.qci"
}

$sequence Idle "Idle1" loop FPS 30 ACT_IDLE 1
$sequence walk "Walk" fps 30 loop LX ACT_WALK 1
$sequence run "Run" loop fps 24 LX loop ACT_RUN 1 frame 0 12
$sequence throw "Throw_Petrol_Bomb" ACT_RANGE_ATTACK_THROW 1 { event 3005 7 }
$sequence pickup "Pick_Up" fps 30 ACT_PICKUP_GROUND 1 { event 2040 15 }
$sequence reload			"Reload"		FPS 30					ACT_RELOAD	   1 { event 3015 21 }
$sequence die		"die"			fps 30							ACT_DIESIMPLE 1
$sequence punch01 "Punch01" FPS 50 ACT_MELEE_ATTACK1 1 { event 3001 18 } { event 3003 15 }
$sequence punch02 "Punch02" FPS 30 ACT_MELEE_ATTACK1 1 { event 3001 15 } { event 3003 10 }
$sequence flinch "GetPunched" FPS 40 ACT_SMALL_FLINCH 1 frames 7 77

$sequence shoot_mp5 mp5_shoot ACT_RANGE_ATTACK1 1 loop {
	addlayer Aim_all
}

$sequence shoot_shotgun shotgun_shoot ACT_RANGE_ATTACK_SHOTGUN 1 loop {
	addlayer Aim_all
	fps 24
}

$sequence shootp1 "pistol_shoot" fps 4 activity ACT_RANGE_ATTACK_PISTOL 1 {
	addlayer Aim_all
	{ event 3014 0 }
}

$animation aim_ref mp5_aim frame 2 2
$animation aim_straight mp5_aim frame 2 2 subtract aim_ref 0
$animation aim_down mp5_aim frame 0 0 subtract aim_ref 0
$animation aim_up mp5_aim frame 1 1 subtract aim_ref 0

$sequence Aim_all  {
	aim_up
	aim_straight
	aim_down
	blendwidth 3
	blend aim_pitch -45 45
	delta
}

$sequence victory "Victory"
$sequence startlea "Startle01" FPS 30 ACT_CIT_MANHACKFLINCH 1
$sequence startleb "Startle02" FPS 30 ACT_CIT_MANHACKFLINCH 1

$include "hitbox.qci"
$include "ragdoll.qci"
