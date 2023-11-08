/*
==============================================================================

View model shotgun

==============================================================================
*/

$modelname weapons/v_shotgun1.mdl
$cdmaterials models\Weapons\V_flaregun models\Weapons\V_shotgun models\weapons\shell

$scale 1.48

// whole body
$body studio "V_Shotgun_old_hands_reference.smd"

//$origin 0 0 68 //default qc
//$origin 1.75 -4 62 1 //HL1 pistol
$origin 0 12 85 //HL2 corrected

//Muzzle flash
$attachment "muzzle" "Muzzle" 0 0 0 rotate -90 0 0 rigid

//Shell eject
$attachment 1 "Eject" 0 0 0 rotate 180 0 0 rigid
 
$sequence idle01 "V_Shotgun_anims" frames 0 0 loop fps 1 activity ACT_VM_IDLE 1 node 0
$sequence fire01 "V_Shotgun_anims" frames 31 55 snap activity ACT_VM_PRIMARYATTACK 1 { event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" } { event 6001 1 "2" } node 2
$sequence altfire "V_Shotgun_anims" frames 56 85 snap activity ACT_VM_SECONDARYATTACK 1 { event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" } { event 6001 1 "2" } node 2
$sequence draw "V_Shotgun_anims" frames 1 31 snap activity ACT_VM_DRAW 1 node 0
$sequence reload1 "V_Shotgun_anims" frames 85 94 activity ACT_SHOTGUN_RELOAD_START 1 node 0
$sequence reload2 "V_Shotgun_anims" frames 95 107 activity ACT_VM_RELOAD 1 node 0
$sequence reload3 "V_Shotgun_anims" frames 108 116 activity ACT_SHOTGUN_RELOAD_FINISH 1 node 0
$sequence pump "V_Shotgun_anims" frames 0 0 fps 30 activity ACT_SHOTGUN_PUMP 1 node 0
$sequence dryfire "V_Shotgun_anims" frames 55 56 fps 10 activity ACT_VM_DRYFIRE 1 node 2
/*
$sequence lowered "Non_threat_idle01" loop activity ACT_VM_IDLE_LOWERED 1 node 1 
$sequence lowered_to_idle "Non_threat_to_idle01" activity ACT_VM_LOWERED_TO_IDLE 1 transition 1 0
$sequence idle_to_lowered "Idle01_to_non_threat" activity ACT_VM_IDLE_TO_LOWERED 1 transition 0 1
*/

// ==========================
//  Dummy sequences for NPCs
// ==========================

$sequence fire "V_Shotgun_old_hands_reference" frame 0 10 fps 5 activity ACT_RANGE_ATTACK_SHOTGUN 1  { event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" } { event 6001 0 "3" } { event 3004 0 } 

