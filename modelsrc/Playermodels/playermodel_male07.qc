//Male07 Playermodel experiment for Leaknet multiplayer

$modelname "Player/Male_07.mdl"

// head controllers
$attachment "eyes" "ValveBiped.Bip01_Head1" -0.1199 -3.2202 67.1661 absolute
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.60 -5.50 0.00 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5.00 4.00 0.00 rotate 0 90 90

$model male_07 "male_07_reference.smd"{
	eyeball righteye "ValveBiped.Bip01_Head1" -1.351 -3.2202 67.1935 "eyeball_r" 1 4 "grn_pupil_r" 0.63
	eyeball lefteye "ValveBiped.Bip01_Head1" 1.1112 -3.2202 67.1386 "eyeball_l" 1 -4 "grn_pupil_l" 0.63

	eyelid  upper_right "male_07_expressions" lowerer 1 -0.1627 neutral 0 0.1716 raiser 2 0.2642 split 0.1 eyeball righteye
	eyelid  lower_right "male_07_expressions" lowerer 3 -0.2623 neutral 0 -0.1926 raiser 4 -0.0231 split 0.1 eyeball righteye
	eyelid  upper_left "male_07_expressions" lowerer 1 -0.1627 neutral 0 0.1716 raiser 2 0.2642 split -0.1 eyeball lefteye
	eyelid  lower_left "male_07_expressions" lowerer 3 -0.2623 neutral 0 -0.1926 raiser 4 -0.0231 split -0.1 eyeball lefteye

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0     // mouth illumination

	flexfile "male_07_expressions" {
		$include "../Humans/standardflex.qci"
	}

	$include "../Humans/facerules.qci"
	$include "../Humans/bodyrules_xsi.qci"
}
//end eye/face data


$surfaceprop "flesh"

$eyeposition 0 0 70

$opaque

$cdmaterials models\citizen\city models\citizen models\Humans\Male

$attachment "forward" "ValveBiped.Bip01_Head1" 0 0 0 rotate 0 -80 -90

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$include "../Humans/standardhierarchy_leak.qci"
$include "../Humans/standardikchains_leak.qci"

//Evil ass temp solution until I remake 2003 citizen anims qc myself - epicplayer
$pushd "../Gman_XSI"
$include "../Humans/Male_animations/playermodel_shared_TEMP.qci"
$popd

$pushd "../gasmasksamuel"
$include "../Humans/Male_animations/playermodel_weapons_shared_TEMP.qci"
$popd

$pushd "../Humans/Male"
$include "../Humans/Male/ragdoll.qci"
$include "../Humans/Male/hitbox.qci"
$popd