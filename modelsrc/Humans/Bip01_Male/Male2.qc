/*
==============================================================================

Male 2 (Ted)

==============================================================================
*/

$modelname Male2.mdl

$eyeposition 0 0 70

// head controllers
$controller 0 "Bip01 Head" XR -20 20
//$controller mouth "Line01" ZR 0 45

$surfaceprop "flesh"
$attachment "eyes" "Bip01 Head" 0.09 -3.97 66.30 absolute
$attachment "mouth" "Bip01 Head" 0.80 5.80 0.15 rotate 0 -80 -90

$cdmaterials models/citizen models/citizen/city

$model male2 "male2_reference.smd" {
	eyeball righteye "Bip01 Head" -1.24 -3.97 66.30 "eyeball_r" 1.00 4 "pupil_r" 0.63
	eyeball lefteye "Bip01 Head" 1.42 -3.97 66.30 "eyeball_l" 1.00 -4 "pupil_l" 0.63

	eyelid  upper_right "male2_expressions" lowerer 1 -0.23 neutral 0 0.19 raiser 2 0.27 split 0.1 eyeball righteye
	eyelid  lower_right "male2_expressions" lowerer 3 -0.26 neutral 0 -0.20 raiser 4 -0.01 split 0.1 eyeball righteye
	eyelid  upper_left "male2_expressions" lowerer 1 -0.23 neutral 0 0.19 raiser 2 0.27 split -0.1 eyeball lefteye
	eyelid  lower_left "male2_expressions" lowerer 3 -0.26 neutral 0 -0.20 raiser 4 -0.01 split -0.1 eyeball lefteye
	
	mouth 0 "mouth" "Bip01 Head" 0 -1 0		// mouth illumination
	
	flexfile "male2_expressions" {
			$include "../standardflex.qci"
	}
	
	$include "../facerules.qci"
}

$pushd "../Bip01_Male_Animations"
$include "../Bip01_Male_Animations/Bip01_Male_Shared.qci"
$popd

$include "hitbox.qci"
$include "ragdoll.qci"
