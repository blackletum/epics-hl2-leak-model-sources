//======================================
//   E3 2003 Metropolice fixed by The One Epicplayer
//======================================

$ModelName "police.mdl"

$model police "Police_reference_olduv_5fingers.smd" {
$include "bodyrules_xsi.qci"
}

$Contents "solid"

$EyePosition 0 0 72

$bbox -9.056 -12.364 -0.808 6.847 15.679 72.205

$cdmaterials models\police\
$surfaceprop "flesh"
$jointsurfaceprop "ValveBiped.Bip01_Head1" "no_decal"

$attachment "eyes" "ValveBiped.Bip01_Head1" 0 -5 67 absolute
$attachment "Center" "ValveBiped.Bip01_Spine1" 0 0 40 absolute
$attachment "Chest" "ValveBiped.Bip01_Spine4" 0 0 55 absolute
$attachment "LHand" "ValveBiped.Bip01_L_Hand" 3 0 0
$attachment "RHand" "ValveBiped.Bip01_R_Hand" 3 0 0

$bbox -13 -13 0 13 13 72

$include "../humans/standardhierarchy_leak.qci"

$include "hitbox.qci"
$include "ragdoll.qci"

$include "2003_5fingerweightlists.qci"
$include "2003_Police_shared.qci"