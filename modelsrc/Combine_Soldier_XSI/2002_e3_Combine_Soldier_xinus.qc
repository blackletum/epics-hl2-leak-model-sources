//2002 Combine Soldier remake
//By Xinus22

$modelname Combine_Soldier.mdl
$cdmaterials models\Combine_Soldier

$bbox -13 -13 0 13 13 72

$eyeposition 0 0 73
$opaque

// whole body
$model Soldier "Soldier_reference_2002_e3_xinus_fullskeleton.smd" 

// energy shield
//$bodygroup energy_shield
//{
//blank
//studio "Soldier_shield_reference.smd"
//}

$bodygroup banners
{
blank
studio "banners/soldier_banner1_reference.smd"
studio "banners/soldier_banner2_reference.smd"
studio "banners/soldier_banner3_reference.smd"
}

//$attachment lefthand "valvebiped.bip01_L_Hand" 0 0 0 rigid
//$attachment "zipline" "ValveBiped.Bip01_Spine4" 3.00 -4.00 0.00 rigid
//$attachment "eyes" "ValveBiped.Bip01_Head1" 4.50 -5.00 0.00 rotate 0 -90 -90
//$attachment "beam_damage" "ValveBiped.Bip01_Spine2" 0 0 0 rigid

$include "soldier_hierarchy.qci"
//$include "../humans/standardikchains.qci"
$include "2003_standardikchains_dummy.qci"
//$include "soldier_bones.qci"
	
//$includemodel "combine_soldier_anims.mdl"
$include "2003_Soldier_shared_megapatch.qci"

$include "hitbox.qci"
$include "2003_ragdoll.qci"