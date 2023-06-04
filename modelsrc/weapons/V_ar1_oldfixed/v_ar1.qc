/*
==============================================================================

V_ar1

==============================================================================
*/

$modelname weapons/v_ar1.mdl
$cdmaterials Models\Weapons\V_ar1 Models\Weapons\V_hand

// whole body
$body studio "v_ar1.smd" 

//$origin 0 0 68

$attachment 0 "muzzle" 0 0 0
$attachment 1 "extractor" 0 0 0

$sequence fire01 "ar1_fire01" fps 30 activity ACT_VM_PRIMARYATTACK 1 { event 5001 0 "51" } { event 6001 0 "1" } snap
$sequence idle1 "ar1_idle01" fps 30 activity ACT_VM_IDLE 1
$sequence draw "ar1_draw01" fps 30 activity ACT_VM_DRAW 1 snap
$sequence holster "test" loop fps 30 activity ACT_VM_HOLSTER 1

$sequence reload "ar1_reload01" fps 30 activity ACT_VM_RELOAD 1
$sequence fire02 "ar1_fire02" fps 30 activity ACT_VM_PRIMARYATTACK 1 { event 5001 0 "51" } { event 6001 0 "1" } snap
$sequence fire03 "ar1_fire03" fps 30 activity ACT_VM_PRIMARYATTACK 1 { event 5001 0 "51" } { event 6001 0 "1" } snap
$sequence firetrb01 "ar1_firetrb01" fps 30 activity ACT_VM_SECONDARYATTACK 1 { event 5001 0 "51" } { event 6001 0 "1" } snap
$sequence firetrb02 "ar1_firetrb02" fps 30 activity ACT_VM_SECONDARYATTACK 1 { event 5001 0 "51" } { event 6001 0 "1" } snap
$sequence firetrb03 "ar1_firetrb03" fps 30 activity ACT_VM_SECONDARYATTACK 1 { event 5001 0 "51" } { event 6001 0 "1" } snap
$sequence idle2 "ar1_idle02" fps 30 activity ACT_VM_IDLE 1
$sequence idle3 "ar1_idle03" fps 30 activity ACT_VM_IDLE 1
$sequence idle4 "ar1_idle04" fps 30 activity ACT_VM_IDLE 1