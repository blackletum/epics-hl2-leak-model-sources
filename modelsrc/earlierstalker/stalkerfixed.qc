//Obsolete Stalker model for HL2 leak 
//Fixed by Epicplayer

$modelname stalker.mdl

$bodygroup "studio"
{
	studio "stalker_fixed.smd"
}


$surfaceprop "flesh"
$illumposition 0.888 -3.547 33.941

$eyeposition 0 0 73

$cdmaterials models\stalker

$attachment "0" "Bip01 Head" 6 4 0 rotate 0 0 0

$bbox -6.11 -17.174 -0.494 13.203 18.95 68.377


$sequence idle s_idle ACT_IDLE 1 loop

$sequence rangeattack s_idle ACT_RANGE_ATTACK1 1 { event 1 1 } loop

$sequence walk s_walk ACT_WALK 1 {
	{ event 2051 14 }
	{ event 2050 0 }
	loop
	LX
}

$sequence run S_run ACT_RUN 1 {
	{ event 2051 7 }
	{ event 2050 20 }
	loop
	LX
}

$sequence attack s_attack ACT_MELEE_ATTACK1 1 {
	{ event 1 4 }
	fps 35
}

$sequence attack2 S_attack2 ACT_MELEE_ATTACK1 1 {
	{ event 1 8 }
	fps 40
}

$sequence attack3 S_attack3 ACT_MELEE_ATTACK1 1 {
	{ event 1 8 }
	fps 35
}

$sequence work s_work ACT_STALKER_WORK 1 {

$sequence jumpback s_jumpbackscript {
	{ event 2050 6 }
	{ event 2051 11 }
	{ event 2050 25 }
	LX
}

$sequence Ragdoll_pose Ragdoll_pose ACT_DIERAGDOLL 1

$sequence protodie protodie ACT_DIESIMPLE 1

$sequence s_flooridle s_flooridle
$sequence s_runpause s_runpause
$sequence s_runpause2 s_runpause2
$sequence s_stand s_stand
$sequence testanim testanim

$collisionjoints "stalker_physics_fixed.smd"
{
	$mass 90
	$inertia 5
	$damping 0.01
	$rotdamping 1.5
	$rootbone "Bip01 Spine"


	$jointmassbias "Bip01 R Thigh" 2
	$jointconstrain "Bip01 R Thigh" y limit -40 20 1
	$jointconstrain "Bip01 R Thigh" z limit -37 63 1

	$jointmassbias "Bip01 L Thigh" 2
	$jointconstrain "Bip01 L Thigh" y limit -20 40 1
	$jointconstrain "Bip01 L Thigh" z limit -360 360 1

	$jointconstrain "Bip01 L Calf" z limit -95 4 1

	$jointconstrain "Bip01 Spine2" x limit -60 60 1
	$jointconstrain "Bip01 Spine2" y limit -25 25 1
	$jointconstrain "Bip01 Spine2" z limit -25 15 1

	$jointmassbias "Bip01 R UpperArm" 2
	$jointconstrain "Bip01 R UpperArm" y limit -45 76 1
	$jointconstrain "Bip01 R UpperArm" z limit -75 75 1

	$jointmassbias "Bip01 L UpperArm" 2
	$jointconstrain "Bip01 L UpperArm" y limit -76 30 1
	$jointconstrain "Bip01 L UpperArm" z limit -75 75 1

	$jointmassbias "Bip01 L Forearm" 3
	$jointconstrain "Bip01 L Forearm" z limit -120 4 1

	$jointmassbias "Bip01 R Forearm" 3
	$jointconstrain "Bip01 R Forearm" z limit -120 4 1

	$jointrotdamping "Bip01 Head" 5
	$jointconstrain "Bip01 Head" x limit -20 20 1
	$jointconstrain "Bip01 Head" y limit -25 25 1
	$jointconstrain "Bip01 Head" z limit -13 30 1

	$jointconstrain "Bip01 R Calf" z limit -95 4 1
}

