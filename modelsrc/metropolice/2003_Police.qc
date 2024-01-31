//======================================
//   Metropolice fixed by The One Epicplayer
//======================================

$ModelName "police.mdl"

$model police "2003_Police_reference.smd" {
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

// This is the list of bones on the model that are bone merged against
//$bonemerge "ValveBiped.Bip01_R_Hand"
//$bonemerge "ValveBiped.baton_parent"

/*
$bodygroup manhack
{
Blank
studio "Manhack_reference.smd"
}
*/

$bbox -13 -13 0 13 13 72

$lod 12 
{
	replacemodel "2003_Police_reference" "Police_LOD_1" 
}

$lod 18 
{
	replacemodel "2003_Police_reference" "Police_LOD_2" 
}

$lod 42
{
	replacemodel "2003_Police_reference" "Police_LOD_3" 
	replacebone "ValveBiped.circle" "ValveBiped.Bip01_L_upperarm"
}

$lod 55 
{
	replacemodel "2003_Police_reference" "Police_LOD_4" 
	replacebone "ValveBiped.circle" "ValveBiped.Bip01_L_upperarm"
}

$lod 80 
{
	replacemodel "2003_Police_reference" "Police_LOD_5" 
	replacebone "ValveBiped.circle" "ValveBiped.Bip01_L_upperarm"
}

$shadowlod
{
	replacemodel "2003_Police_reference" "Police_shadow_LOD" 
	replacebone "ValveBiped.circle" "ValveBiped.Bip01_L_upperarm"
}

//$include "DefineBones.qci"
//$definebone "ValveBiped.baton_parent" "ValveBiped.Bip01_R_Hand" 2.338453 -1.535742 -6.391511 -5.407576 -114.703346 87.103622 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000

//$include "weaponmacros.qci"
//$include "standardikchains.qci"
$include "../humans/standardhierarchy_leak.qci"
//$include "commonbones.qci"
//$include "body_poses_lean.qci"

$include "hitbox.qci"
$include "ragdoll.qci"

$include "2003_3fingerweightlists.qci"
$include "2003_Police_shared.qci"