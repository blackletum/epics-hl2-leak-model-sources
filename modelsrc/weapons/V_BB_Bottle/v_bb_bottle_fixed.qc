/*
==============================================================================

Bottle Brickbat, now with a real bottle!
Anims and meshes by Valve, edits by epicplayer

==============================================================================
*/

$modelname weapons/v_BB_Bottle.mdl
$cdmaterials models\Weapons\V_hand models\Weapons\W_BB_Bottle


// whole body
$body studio "BB_Bottle_reference.smd" reverse
$body bottle "BB_Bottle_nohands_reference.smd"

$origin 0 0 68

$sequence idle		"idle01" loop fps 30		ACT_VM_IDLE 1
$sequence draw		"draw" fps 30 activity	ACT_VM_DRAW 1 snap
$sequence pullback	"pullback" fps 30		ACT_VM_PULLBACK 1
$sequence throw		"throw_bottlefix" fps 30	ACT_VM_THROW 1
