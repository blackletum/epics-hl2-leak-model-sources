/*
==============================================================================

Headcrab Brickbat

==============================================================================
*/

$modelname weapons/v_BB_Headcrab.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\V_BB_Headcrab


// whole body
$body studio "BB_Headcrab_reference.smd" reverse

$origin 0 0 68

$sequence HC_idle		"HC_idle01" loop fps 30		ACT_VM_IDLE 1
$sequence HC_draw		"HC_draw" fps 30 activity	ACT_VM_DRAW 1 snap
$sequence HC_pullback	"HC_pullback" fps 30		ACT_VM_PULLBACK 1
$sequence HC_throw		"HC_throw" fps 30			ACT_VM_THROW 1
