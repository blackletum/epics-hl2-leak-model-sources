/*
==============================================================================

2003 Zombie torso QC remake
By epicplayer

==============================================================================
*/

//$bbox -12 -12 0   12 12 24

$modelname Zombie/Classic_headless_torso.mdl
$cdmaterials models/zombie_classic

$heirarchy "ValveBiped.Bip01_Spine" ""
$collapsebones

// whole body
$body studio "2003_meshes/reference.smd"
// fix transparent materials
$mostlyopaque
$include "hitbox_torso.qci"

//$origin 0 -24 0
$eyeposition 0 0 24 

/*
$attachment "headcrab" "ValveBiped.HC_Rear_Bone" 0.00 0.00 0.00 rotate 0 0 0 rigid
$attachment "eyes" "ValveBiped.HC_Body_Bone" -0.00 -0.00 0.00 rotate 0 0 -50
$attachment "head" "ValveBiped.HC_Body_Bone" -0.00 -0.00 0.00 rotate 0 0 -50
$attachment "chest" "ValveBiped.Bip01_Spine4" -3.00 6.00 0.00 rotate 0 60 90
$attachment Blood_Left "ValveBiped.Bip01_L_Finger2" 0 0 0 rigid
$attachment Blood_Right "ValveBiped.Bip01_R_Finger2" 0 0 0 rigid

$animblocksize 32
*/

//$attachment "guts1" "gutsattach01"	0 0 0 rigid

//2003 anims have a very slight origin offset compared to repo smds, so resorting to using them - epicplayer
$sequence Idle01 "2003_anims/torso_idle" loop FPS 30 activity ACT_IDLE 1
$sequence Idle02 "2003_anims/torso_idleB" loop FPS 30 activity ACT_IDLE 2
//$sequence death "torso_death" FPS 25 origin 0 -12 0 activity ACT_DIESIMPLE 1
$sequence crawl "2003_anims/torso_crawl" loop LX LY FPS 30 activity ACT_WALK 1 {
	{ event 17 6 }
	{ event 16 23 }
}

$sequence attack "2003_anims/torso_attack" FPS 30 activity ACT_MELEE_ATTACK1 1 { event 1 13 } //{ event AE_ZOMBIE_ATTACK_SCREAM 5 }  { event AE_ZOMBIE_ATTACK_LEFT 11 }

$sequence releasecrab "torso_crabrelease" FPS 30 origin 0 -24 0 activity ACT_ZOM_RELEASECRAB 1

//$sequence fall "torso_fall" FPS 30 origin 0 -12 0 

$include "ragdoll_torso_2003.qci"

// ------------- LOD's --------------------


$lod 5 
{
	//replacemodel "2003_meshes/reference" "2003_meshes/reference_lod1"
	//replacemodel "Headcrab_reference" "headcrab_lod_1"
}

$lod 10 
{
	replacemodel "2003_meshes/reference" "2003_meshes/reference_lod2"
	//replacemodel "Headcrab_reference" "headcrab_lod_2"

}

$lod 17 
{
	replacemodel "2003_meshes/reference" "2003_meshes/reference_lod3"
	//replacemodel "Headcrab_reference" "headcrab_lod_3"

}

$lod 32 
{
	replacemodel "2003_meshes/reference" "2003_meshes/reference_lod4"
	//replacemodel "Headcrab_reference" "headcrab_lod_4"

}

$lod 45 
{
	replacemodel "2003_meshes/reference" "2003_meshes/reference_lod5"
	//replacemodel "Headcrab_reference" "headcrab_lod_5"

}

$lod 60
{
	replacemodel "2003_meshes/reference" "2003_meshes/reference_lod6"
	//replacemodel "Headcrab_reference" "headcrab_lod_6"

}

$shadowlod
{

	replacemodel "2003_meshes/reference" "2003_meshes/reference_lod7"
	//replacemodel "Headcrab_reference" "headcrab_lod_shadow"
}
