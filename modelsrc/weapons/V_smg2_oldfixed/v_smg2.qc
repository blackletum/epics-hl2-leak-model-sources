/*
==============================================================================

View model SMG2

==============================================================================
*/

$modelname weapons/v_smg2.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_smg2

// whole body
$body studio "SMG2_reference.smd"

$origin 0 0 68

//Muzzle flash
$attachment 0 "Bip01 R Hand" 15 0 5

//Shell eject
$attachment 1 "Bip01 R Hand" 9 0 4 rotate 0 -90 0

//Single fire mode animations
$sequence idle1 "Idle_2hand" loop fps 30 activity ACT_VM_IDLE 1
$sequence fire1 "Fire_2hand" fps 30 snap activity ACT_VM_PRIMARYATTACK 1 { event 5001 0 "0" } { event 6001 0 "0" }
$sequence fire2 "Fire_2hand" fps 2 snap activity ACT_VM_SECONDARYATTACK 1 { event 5001 0 "2" }

$sequence draw1 "Draw_2hand" fps 30 snap activity ACT_VM_DRAW 1
$sequence reload1 "Reload_2hand" frames 0 60 fixuploop -10 0 fps 40 activity ACT_VM_RELOAD 1
$sequence dryfire1 "Dryfire_2hand" fps 30 snap activity ACT_VM_DRYFIRE 1





$sequence idle2 "Idle_1hand" loop fps 30 activity ACT_VM_IDLE 1
$sequence fire2 "Fire_1hand" fps 30 snap activity ACT_VM_PRIMARYATTACK 1 { event 5001 0 "0" } { event 6001 0 "0" }
$sequence fire3 "Fire_1hand" fps 2 snap activity ACT_VM_SECONDARYATTACK 1 { event 5001 0 "2" }

$sequence draw2 "Draw_1hand" fps 30 snap activity ACT_VM_DRAW 1
$sequence reload2 "Reload_1hand" frames 0 60 fixuploop -10 0 fps 40 activity ACT_VM_RELOAD 1
$sequence dryfire2 "Dryfire_1hand" fps 30 snap activity ACT_VM_DRYFIRE 1



