/*
==============================================================================

Elena Mossman
Mesh remake by Xinus22. Rigging, flexes, and compiling by The One Epicplayer.

==============================================================================
*/

$modelname Mossman.mdl
$cdmaterials models\Mossman

//start eye/face data
$eyeposition 0 0 65

// head controllers
$attachment "eyes" "Bip01 Head" -0.08 -3.32 64.98 absolute
$attachment "mouth" "Bip01 Head" 0.80 -5.80 -0.15 rotate 0 -80 -90

$model Mossman "Mossman_Old_Reference.smd" {
	eyeball righteye "Bip01 Head" -1.20 -3.32 64.96 "eyeball_r" 1.00 4 "pupil_r" 0.63
	eyeball lefteye "Bip01 Head" 1.05 -3.33 64.99 "eyeball_l" 1.00 -4 "pupil_l" 0.63

	eyelid  upper_right "Mossman_Old_Expressions" lowerer 1 -0.25 neutral 0 0.16 raiser 2 0.29 split 0.1 eyeball righteye
	eyelid  lower_right "Mossman_Old_Expressions" lowerer 3 -0.31 neutral 0 -0.25 raiser 4 -0.09 split 0.1 eyeball righteye
	eyelid  upper_left "Mossman_Old_Expressions" lowerer 1 -0.28 neutral 0 0.14 raiser 2 0.26 split -0.1 eyeball lefteye
	eyelid  lower_left "Mossman_Old_Expressions" lowerer 3 -0.34 neutral 0 -0.28 raiser 4 -0.12 split -0.1 eyeball lefteye

	mouth 0 "mouth" "Bip01 Head" 0 1 0     // mouth illumination
	flexfile "Mossman_Old_Expressions" {
		$include "../Humans/standardflex.qci"
	}

	$include "../Humans/facerules.qci"
}
//end eye/face data

$surfaceprop "flesh"
$bbox -13 -13 0  13 13 72
$mostlyopaque

$pushd "../Humans/Bip01_Female_Animations"
$include "../Humans/Bip01_Female_Animations/Bip01_Female_Shared.qci"
$popd