//Male03 Playermodel experiment for Leaknet multiplayer

$modelname "Player/Manwich.mdl"

// head controllers
$attachment "eyes" "ValveBiped.Bip01_Head1" 0.095 -3.7469 67.3507 absolute
$attachment "mouth" "ValveBiped.Bip01_Head1" 0.80 -5.80 -0.15 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 5.00 4.00 0.00 rotate 0 90 90

$model manwich "manwich_reference.smd"{
	eyeball righteye "ValveBiped.Bip01_Head1" -1.2301 -3.7469 67.3623 "eyeball_r" 1 4 "pupil_r" 0.63
	eyeball lefteye "ValveBiped.Bip01_Head1" 1.4201 -3.7469 67.3391 "eyeball_l" 1 -4 "pupil_l" 0.63

	eyelid  upper_right "manwich_expressions" lowerer 1 -0.245 neutral 0 0.1689 raiser 2 0.2489 split 0.1 eyeball righteye
	eyelid  lower_right "manwich_expressions" lowerer 3 -0.2747 neutral 0 -0.216 raiser 4 -0.0309 split 0.1 eyeball righteye
	eyelid  upper_left "manwich_expressions" lowerer 1 -0.245 neutral 0 0.1689 raiser 2 0.2489 split -0.1 eyeball lefteye
	eyelid  lower_left "manwich_expressions" lowerer 3 -0.2747 neutral 0 -0.216 raiser 4 -0.0309 split -0.1 eyeball lefteye

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0     // mouth illumination

	flexfile "manwich_expressions" {
		$include "../Humans/standardflex.qci"
	}

	$include "../Humans/facerules.qci"
	$include "../Humans/bodyrules_xsi.qci"
}
//end eye/face data

$opaque

$cdmaterials models\Conscript


$surfaceprop "flesh"
$proceduralbones "male_03.vrd"

$eyeposition 0 0 70

$attachment "forward" "ValveBiped.Bip01_Head1" 0 0 0 rotate 0 -80 -90

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$cdmaterials models\citizen\city

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