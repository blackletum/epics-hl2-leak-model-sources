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
$attachment "eyes" "Bip01 Head" -0.04 -6.30 67.23 absolute
$attachment "mouth" "Bip01 Head" 0.80 -5.80 -0.15 rotate 0 -80 -90

$cdmaterials models/citizen_17

$model studio "citizen.smd" {
	eyeball righteye "Bip01 Head" -1.28 -6.38 67.23 "eyeball_r" 1.00 4 "pupil_r" 0.63
	eyeball lefteye "Bip01 Head" 1.20 -6.22 67.22 "eyeball_l" 1.00 -4 "pupil_l" 0.63

	eyelid  upper_right "Citizen_expressions" lowerer 1 -0.17 neutral 0 0.10 raiser 2 0.10 split 0.1 eyeball righteye
	eyelid  lower_right "Citizen_expressions" lowerer 3 -0.26 neutral 0 -0.23 raiser 4 -0.18 split 0.1 eyeball righteye
	eyelid  upper_left "Citizen_expressions" lowerer 1 -0.16 neutral 0 0.11 raiser 2 0.11 split -0.1 eyeball lefteye
	eyelid  lower_left "Citizen_expressions" lowerer 3 -0.28 neutral 0 -0.25 raiser 4 -0.18 split -0.1 eyeball lefteye
	
	mouth 0 "mouth" "Bip01 Head" 0 -1 0		// mouth illumination
	
	flexfile "Citizen_expressions" {
			$include "../Humans/standardflex.qci"
	}
	
	$include "../Humans/facerules.qci"
}

//Allows valvebiped weapons to bonemerge to us
$bodygroup Handfix
{
blank
studio "../gasmaskcitizen_bip01/Citizen_handfix.smd"
}

//$lockbonelengths
$pushd "../gasmaskcitizen_bip01"

//$sequence Idle "Idle1" loop FPS 30 ACT_IDLE 1 node 1
$sequence Idle "Siggraph_anims/Idle1" loop FPS 30 ACT_IDLE 1 node 1
//$sequence walk "WalkN" fps 30 loop LX ACT_WALK 1 node 1
$sequence walk "Siggraph_anims/Walk" fps 20 loop LX ACT_WALK 1 node 1
$sequence run "Siggraph_anims/Run" LX loop ACT_RUN 1 node 1 //fps 24
//$sequence throw "Throw_Petrol_Bomb" ACT_RANGE_ATTACK_THROW 1 { event 3005 7 }
$sequence throw "Siggraph_anims/Throw" ACT_RANGE_ATTACK_THROW 1 { event 3005 26 }
//$sequence pickup "Pick_Up" fps 30 ACT_PICKUP_GROUND 1 { event 2040 15 }
$sequence pickup "Siggraph_anims/Pick_Up" fps 25 ACT_PICKUP_GROUND 1 snap frames 0 29 { event 2040 15 }
$sequence reload			"Reload"		FPS 30					ACT_RELOAD	   1 { event 3015 21 }
$sequence die		"die"			fps 30							//ACT_DIESIMPLE 1
$sequence punch01 "Punch01" FPS 50 ACT_MELEE_ATTACK1 1 { event 1 18 } { event 3003 15 }
$sequence punch02 "Punch02" FPS 30 ACT_MELEE_ATTACK_SWING 1 { event 3001 15 } { event 3003 10 }
$sequence flinch "GetPunched" FPS 40 frames 7 77 //ACT_SMALL_FLINCH 1

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
$sequence walllean "Lean_Idle_Wall" loop FPS 30 ACT_CIT_IDLEWALL 1 node 2
$sequence leanonwall "Lean_On_Wall" FPS 30 ACT_CIT_LEANONWALL 1 transition 1 2
$sequence leanoffwall "Lean_Off_Wall" FPS 30 ACT_CIT_LEANOFFWALL 1 transition 2 1
$sequence handsup "Hands_Up" FPS 30 ACT_CIT_HANDSUP 1 transition 1 3
$sequence handsdown "Hands_Down" FPS 30 ACT_CIT_HANDSDOWN 1 transition 3 1
$sequence handsupidle "Hands_Up_Idle" loop FPS 30 ACT_CIT_HANDSUPIDLE 1 node 3
$sequence cower "Cower" FPS 30 ACT_CIT_COWER 1 transition 1 4
$sequence cowerstand "Cower_Stand" FPS 30 ACT_CIT_COWERSTAND 1 transition 4 1
$sequence coweridle "Cower_Idle" loop FPS 30 ACT_CIT_COWERIDLE 1 node 4
$sequence cowerflinch "Cower_Flinch" FPS 30 ACT_CIT_COWERFLINCH 1 node 4
$sequence showarmband "Show_Arm_Band" FPS 30 ACT_CIT_SHOWARMBAND 1
$sequence blinded "Blinded" FPS 30 ACT_CIT_BLINDED 1

$sequence Die_simple Die_simple FPS 50 ACT_DIESIMPLE 1

//Hand-to-hand combat
$sequence fightstance "Siggraph_anims/HH_Idle" FPS 24 ACT_HH_IDLE 1 loop
$sequence fightapproach "Siggraph_anims/HH_Forwards" FPS 24 ACT_HH_WALK 1 LX loop //startloop 12
$sequence punchleft "Siggraph_anims/HH_Punch_Left" FPS 24 ACT_HH_PUNCH_LEFT 1 { event AE_HH_PUNCH 5 }
$sequence punchright "Siggraph_anims/HH_Punch_Right" FPS 24 ACT_HH_PUNCH_RIGHT 1 { event AE_HH_PUNCH 5 }
$sequence clubheadblock "Siggraph_anims/HH_Block" FPS 24 ACT_HH_CLUBHEAD_BLOCK 1
$sequence clubheaddodge "Siggraph_anims/HH_Dodge" FPS 24 ACT_HH_CLUBHEAD_DODGE 1

$include "../gasmaskcitizen_bip01/hitbox.qci"
$include "../gasmaskcitizen_bip01/ragdoll.qci"
$popd