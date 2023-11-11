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
$attachment "0" "Muzzle" 0 0 0 rotate -90 0 0 rigid

//Shell eject
//$attachment 1 "Shotgun" 0.40 4.60 6.10 rotate 0 0 0
$attachment 1 "Shotgun" 0.27 3.11 4.12 rotate 0 0 0
 
$sequence idle1 "V_Shotgun_anims" frames 116 150 loop fps 30 activity ACT_VM_IDLE 80 node 0
$sequence fire "V_Shotgun_anims" frames 31 55 snap activity ACT_VM_PRIMARYATTACK 1 { event 5001 0 "1" } { event 6001 1 "2" } node 2
$sequence altfire "V_Shotgun_anims" frames 56 85 snap activity ACT_VM_SECONDARYATTACK 1 { event 5001 0 "1" } { event 6001 1 "2" } node 2
$sequence reload "V_Shotgun_anims" frames 95 107 activity ACT_VM_RELOAD 1 node 0
$sequence reload_end "V_Shotgun_anims" frames 108 116 fps 20 activity ACT_SHOTGUN_RELOAD_FINISH 1 node 0
$sequence start_reload "V_Shotgun_anims" frames 85 94 activity ACT_SHOTGUN_RELOAD_START 1 node 0
$sequence draw "V_Shotgun_anims" frames 1 31 snap activity ACT_VM_DRAW 1 node 0

//HL1 animations
$sequence reholster "V_Shotgun_anims" frames 240 260 fps 30		activity ACT_VM_HOLSTER 1
$sequence fidget "V_Shotgun_anims" frames 150 200 fps 20		activity ACT_VM_IDLE 1
$sequence deepidle "V_Shotgun_anims" frames 200 240 fps 20	activity ACT_VM_IDLE 1

$sequence pump "V_Shotgun_anims" frames 0 0 fps 30 activity ACT_SHOTGUN_PUMP 1 node 0
$sequence dryfire "V_Shotgun_anims" frames 55 56 fps 10 activity ACT_VM_DRYFIRE 1 node 2
/*
$sequence lowered "V_Shotgun_anims" frames 219 219 loop activity ACT_VM_IDLE_LOWERED 1 node 1 
$sequence lowered_to_idle "V_Shotgun_anims" frames 219 240 activity ACT_VM_LOWERED_TO_IDLE 1 transition 1 0
$sequence idle_to_lowered "V_Shotgun_anims" frames 200 219 activity ACT_VM_IDLE_TO_LOWERED 1 transition 0 1
*/

// ==========================
//  Dummy sequences for NPCs
// ==========================

$sequence fire_npc "V_Shotgun_old_hands_reference" frame 0 10 fps 5 activity ACT_RANGE_ATTACK_SHOTGUN 1  { event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" } { event 6001 0 "3" } { event 3004 0 } 

