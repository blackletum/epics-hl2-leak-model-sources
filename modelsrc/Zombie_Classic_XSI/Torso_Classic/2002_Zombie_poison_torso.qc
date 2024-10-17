/*
==============================================================================

2002 Poison Zombie torso QC remake
By epicplayer

==============================================================================
*/

//$bbox -12 -12 0   12 12 24

$modelname Zombie/Poison_torso.mdl
$cdmaterials models/zombie_poison models/zombie_classic models\headcrab_classic

$heirarchy "ValveBiped.Bip01_Spine" ""
$collapsebones

// whole body
$body studio "../../Zombie_Poison/2002_meshes/Zombiepoison_torso_reference.smd"
// fix transparent materials
$opaque
$include "hitbox_torso.qci"
$include "hitbox_head.qci"

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



//Headcrab 1
$bodygroup headcrab1
{
blank
studio "2003_meshes/Headcrab_reference.smd"
studio "../../Zombie_Poison/2002_meshes/Headcrab_1_Old_reference.smd"
}