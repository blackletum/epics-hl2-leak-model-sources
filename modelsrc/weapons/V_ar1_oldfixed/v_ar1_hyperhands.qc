/*
==============================================================================

V_ar1 with hyper hands
Animations by Valve. Hyper hands by Xinus. Model stuff by epicplayer.

==============================================================================
*/

$modelname weapons/v_ar1.mdl
$cdmaterials Models\Weapons\V_ar1 Models\Weapons\V_flaregun
$scale 1.48

// whole body
$body studio "v_ar1_nohands.smd" 
$body studio "v_ar1_hyper_hands_reference.smd"

//$origin 0 0 68

$attachment 0 "muzzle" 0 0 0 rotate 0 -90 0
$attachment 1 "extractor" 0 0 0

$sequence fire01 "ar1_fire01" fps 30 activity ACT_VM_PRIMARYATTACK 1 { event 5001 0 "0" } { event 6001 0 "1" } snap
$sequence idle1 "ar1_idle01" fps 30 activity ACT_VM_IDLE 1 { event 5004 56 "NPC_MissileDefense.Reload" }
$sequence draw "ar1_draw01" fps 30 activity ACT_VM_DRAW 1 snap
$sequence holster "test" loop fps 30 activity ACT_VM_HOLSTER 1

$sequence reload "ar1_reload01" fps 30 activity ACT_VM_RELOAD 1 { event 5004 32 "NPC_MissileDefense.Reload" }
$sequence fire02 "ar1_fire02" fps 30 activity ACT_VM_PRIMARYATTACK 1 { event 5001 0 "0" } { event 6001 0 "1" } snap
$sequence fire03 "ar1_fire03" fps 30 activity ACT_VM_PRIMARYATTACK 1 { event 5001 0 "0" } { event 6001 0 "1" } snap
$sequence firetrb01 "ar1_firetrb01" fps 30 activity ACT_VM_SECONDARYATTACK 1 { event 5001 0 "0" } { event 6001 0 "1" } snap
$sequence firetrb02 "ar1_firetrb02" fps 30 activity ACT_VM_SECONDARYATTACK 1 { event 5001 0 "0" } { event 6001 0 "1" } snap
$sequence firetrb03 "ar1_firetrb03" fps 30 activity ACT_VM_SECONDARYATTACK 1 { event 5001 0 "0" } { event 6001 0 "1" } snap
$sequence idle2 "ar1_idle02" fps 30 activity ACT_VM_IDLE 1 { event 5004 36 "NPC_MissileDefense.Reload" }
$sequence idle3 "ar1_idle03" fps 30 activity ACT_VM_IDLE 1 { event 5004 35 "NPC_MissileDefense.Reload" }
$sequence idle4 "ar1_idle04" fps 30 activity ACT_VM_IDLE 1
$sequence idle "ar1_idle_dummy" loop frames 0 30 fps 1 activity ACT_VM_IDLE 16