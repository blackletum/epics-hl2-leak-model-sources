/*
==============================================================================

Molotov

Anims and meshes by Valve, edits by epicplayer

==============================================================================
*/

$modelname weapons/v_molotov.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\W_molotov


// whole body
$body studio "../../weapons/V_BB_Bottle/BB_Bottle_reference.smd" reverse
$body bottle "BB_Molotov_reference.smd"

$origin 0 0 68

$sequence HC_idle		"../../weapons/V_BB_Bottle/idle01" loop fps 30		ACT_VM_IDLE 1
$sequence HC_draw		"../../weapons/V_BB_Bottle/draw" fps 30 activity	ACT_VM_DRAW 1 snap
$sequence HC_pullback	"../../weapons/V_BB_Bottle/pullback" fps 30		ACT_VM_PULLBACK 1
$sequence HC_throw		"../../weapons/V_BB_Bottle/throw_bottlefix" fps 30			ACT_VM_THROW 1

