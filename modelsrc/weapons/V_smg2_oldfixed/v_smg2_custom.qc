/*
==============================================================================

View model SMG2 for Test Mod
QC edits by Epicplayer

==============================================================================
*/

$modelname weapons/v_smg2.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_smg2 models\Weapons\V_smg1

// whole body
$body studio "SMG2_reference.smd"

$origin 0 0 68

//Muzzle flash
$attachment 0 "Bip01 R Hand" 30 1.1 5

//Shell eject
$attachment 1 "Bip01 R Hand" 9 0 4 rotate 0 -90 0

//Single fire mode animations
$sequence idle1 "Idle_2hand" loop fps 30 activity ACT_VM_IDLE 1 node auto
$sequence fire1 "Fire_2hand" fps 30 snap activity ACT_VM_PRIMARYATTACK 1 { event AE_MUZZLEFLASH 0 "SMG1 0" } { event 6001 0 "0" } node auto
$sequence firemode "Fire_2hand" fps 5 activity ACT_VM_SECONDARYATTACK 1

$sequence draw1 "Draw_2hand" fps 30 snap activity ACT_VM_DRAW 1 node auto
$sequence reload1 "Reload_2hand" fps 30 activity ACT_VM_RELOAD 1 node auto { event 5004  0 "Weapon_SMG2.Reload" }
$sequence dryfire1 "Dryfire_2hand" fps 30 snap activity ACT_VM_DRYFIRE 1 node auto

$sequence Auto_to_single "Auto_to_single" fps 30 activity ACT_SMG2_TOBURST 1 //transition auto single
$sequence Single_to_auto "Single_to_auto" fps 30 activity ACT_SMG2_TOAUTO 1 //transition single auto


$sequence idle2 "Idle_1hand" loop fps 30 node single activity ACT_SMG2_IDLE2 1
$sequence fire2 "Fire_1hand" fps 30 snap node single activity ACT_SMG2_FIRE2 1 { event AE_MUZZLEFLASH 0 "SMG1 0" } { event 6001 0 "0" }
//$sequence fire3 "Fire_1hand" fps 2 snap node single //activity ACT_VM_SECONDARYATTACK -1 { event 5001 0 "2" }

$sequence draw2 "Draw_1hand" fps 30 snap node single activity ACT_SMG2_DRAW2 1
$sequence reload2 "Reload_1hand" fps 30 node single activity ACT_SMG2_RELOAD2 1 { event 5004  0 "Weapon_SMG2.Reload" }
$sequence dryfire2 "Dryfire_1hand" fps 30 snap node single activity ACT_SMG2_DRYFIRE2 1
