/*
==============================================================================

V_ml with animations
Model by Valve, anims by epicplayer

==============================================================================
*/

$modelname weapons/v_ml.mdl
$cdmaterials models\Weapons\V_ml

// whole body
$body studio "v_ml_highres.smd" 

$origin 0 -5.5 69

$attachment 0 "cylinder01" 0 0 28 rotate -90 0 0
//$attachment 1 "extractor" 0 0 0

$sequence fire "Fire" fps 20 activity ACT_VM_PRIMARYATTACK 1 { event 5001 0 "0" } snap
$sequence idle1 "Idle01" loop fps 30 activity ACT_VM_IDLE 1
$sequence draw "Draw" fps 30 activity ACT_VM_DRAW 1 snap
$sequence holster "Holster" fps 30 activity ACT_VM_HOLSTER 1



