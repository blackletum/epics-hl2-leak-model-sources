/*
==============================================================================

World model molotov

==============================================================================
*/

$modelname weapons/W_molotov.mdl
$cdmaterials models/weapons/w_molotov

// whole body
$body studio "Molotov_reference_leak.smd"

//Fire
$attachment 0 "fire" 0 0 0

$sequence idle "Idle01" FPS 30 loop activity ACT_VM_IDLE 1
$sequence attack1 "Idle01" FPS 30 