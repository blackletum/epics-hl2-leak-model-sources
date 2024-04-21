
$modelname Soldier_E3Under.mdl
$cdmaterials models\Combine_Soldier
$cdmaterials models\Weapons\W_ar2

$bbox -13 -13 0 13 13 72

$eyeposition 0 0 73

// head controllers
//$controller 0 "Bip01 Head" XR -50 50
//$controller 1 "Bip01 Head" ZR -25 55

$poseparameter "move_yaw" -180 180 wrap

$poseparameter "aim_pitch" -90 90 loop 360
$poseparameter "aim_yaw" -90 90 loop 360


// whole body
$model Soldier "Soldier_reference_2002.smd" 

// energy shield
$bodygroup Gun
{

studio "Soldier_Gun_reference.smd"
blank

}

$sequence Idle1	"Idle01" loop FPS 30 ACT_IDLE 1



$include "hitbox.qci"
$include "2003_ragdoll.qci"




//  ---------- Scripted Anims ------------------

//$sequence activate_turret "Activate_turret" fps 30

$sequence e3_sewer "e3_sewer" origin -263.1 -111.42 191.4 fps 30 {
{ event 1003 104 1 }
{ event 1003 168 1 }
{ event 1003 240 2 }
}

//$sequence setbomb "set_us_up_thebomb!!" FPS 25  - not in VSS!

//$sequence touchtest "touchtest"
/*

$lod 14
{
	replacemodel "soldier_reference" "soldier_LOD_1" 
}

$lod 21
{
	replacemodel "soldier_reference" "soldier_LOD_2" 
	$include "../Humans/removehands.qci"
}

$lod 32
{
	replacemodel "soldier_reference" "soldier_LOD_3" 
	$include "../Humans/lowesthumanskeleton.qci"
}

$lod 50
{
	replacemodel "soldier_reference" "soldier_LOD_4" 
	$include "../Humans/lowesthumanskeleton.qci"
}

$lod 70
{
	replacemodel "soldier_reference" "soldier_LOD_5" 
	$include "../Humans/lowesthumanskeleton.qci"
}

$shadowlod
{
	replacemodel "soldier_reference" "soldier_LOD_shadow" 
	$include "../Humans/lowesthumanskeleton.qci"
}

*/