/*
==============================================================================

Combine Guard Gun

==============================================================================
*/

$modelname Weapons/v_Guardgun.mdl

$cdmaterials Models/Weapons/v_Guardgun models\Weapons\V_hand

// whole body
$body studio "Guardgun_reuv_reference.smd"

$origin 0 0 68

// attachment points
$attachment 0 "muzzle" 0 0 0

//Dummy16 is the bone that the shell should be ejected from

$sequence idle1 "Idle01" loop fps 30 activity ACT_VM_IDLE 1
$sequence draw "Draw" fps 30 activity ACT_VM_DRAW 1 snap
$sequence fire "Fire01" fps 30 activity ACT_VM_PRIMARYATTACK 1
$sequence fireempty "Fire_empty" fps 30
$sequence reload "reload" fps 30 activity ACT_VM_RELOAD 1



