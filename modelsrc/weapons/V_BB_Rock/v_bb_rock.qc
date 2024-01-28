/*
==============================================================================

Rock Brickbat for Megapatch
Anims and meshes by Valve, mesh edits and creation by epicplayer

==============================================================================
*/

$modelname weapons/v_BB_Rock.mdl
$cdmaterials models\Weapons\V_hand models\props_wasteland


// whole body
$body studio "../../weapons/V_BB_Bottle/BB_Bottle_reference.smd" reverse
$body rock "BB_Rock_reference.smd"

$origin 0 0 68

$sequence HC_idle		"../../weapons/V_BB_Headcrab/HC_idle01" loop fps 30		ACT_VM_IDLE 1
$sequence HC_draw		"../../weapons/V_BB_Headcrab/HC_draw" fps 30 activity	ACT_VM_DRAW 1 snap
$sequence HC_pullback	"../../weapons/V_BB_Headcrab/HC_pullback" fps 30		ACT_VM_PULLBACK 1
$sequence HC_throw		"../../weapons/V_BB_Headcrab/HC_throw" fps 30			ACT_VM_THROW 1

