/*
==============================================================================

Male 7 (Mike)

==============================================================================
*/

$modelname c17_male7.mdl

$eyeposition 0 0 70

// head controllers
$controller 0 "Bip01 Head" XR -20 20
//$controller mouth "Line01" ZR 0 45

$surfaceprop "flesh"
$attachment "eyes" "Bip01 Head" 0.1399 -3.8601 67.6645 absolute
$attachment "mouth" "Bip01 Head" 0.80 5.80 0.15 rotate 0 -80 -90

$cdmaterials models/citizen models/citizen/city

$model c17_male7 "c17_male7_reference.smd" {
	eyeball eye_right "Bip01 Head" -1.351 -3.2202 67.1935 "eyeball_r" 1 4 "pupil_r" 0.64
	eyeball eye_left "Bip01 Head" 1.1112 -3.2202 67.1386 "eyeball_l" 1 -4 "pupil_l" 0.64

	eyelid  upper_right "male7_expressions" lowerer 1 -0.1627 neutral 0 0.1716 raiser 2 0.2642 split 0.1 eyeball eye_right
	eyelid  lower_right "male7_expressions" lowerer 3 -0.2623 neutral 0 -0.1926 raiser 4 -0.0231 split 0.1 eyeball eye_right
	eyelid  upper_left "male7_expressions" lowerer 1 -0.1627 neutral 0 0.1716 raiser 2 0.2642 split -0.1 eyeball eye_left
	eyelid  lower_left "male7_expressions" lowerer 3 -0.2623 neutral 0 -0.1926 raiser 4 -0.0231 split -0.1 eyeball eye_left
	
	mouth 0 "mouth" "Bip01 Head" 0 -1 0		// mouth illumination
	
	flexfile "male7_expressions" {
			$include "../standardflex.qci"
	}
	
	$include "../facerules.qci"
}

$pushd "../Bip01_Male_Animations"
$include "../Bip01_Male_Animations/Bip01_Male_Shared.qci"
$popd

$include "hitbox.qci"
$include "ragdoll.qci"
