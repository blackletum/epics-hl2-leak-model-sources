/*
==============================================================================

Fixed flaregun with slightly better mesh/animations (GYFCT edition)
By epicplayer

==============================================================================
*/

$modelname Weapons/v_flaregun.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_flaregun

// whole body
$body studio "Flaregun_fixed_reference.smd" 

//Muzzle flash
$attachment 0 "muzzle" 0 0 0 rotate -0 -180 0

$origin 0 0 68

$sequence idle1 "Idle01" loop fps 30 activity ACT_VM_IDLE 1
$sequence draw "Draw" fps 30 activity ACT_VM_DRAW 1 snap frames 10 30
$sequence fire "Fire" fps 30 activity ACT_VM_PRIMARYATTACK 1 snap { event 5001 0 "0" }
$sequence reload "Reload_fixed" fps 20 activity ACT_VM_RELOAD 1
$sequence dryfire "Dryfire" fps 30 activity ACT_VM_DRYFIRE 1 snap
