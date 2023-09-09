/*
==============================================================================

Male 3 (Joe)

==============================================================================
*/

$modelname Male3.mdl

$eyeposition 0 0 70

// head controllers
$controller 0 "Bip01 Head" XR -20 20
//$controller mouth "Line01" ZR 0 45

$surfaceprop "flesh"
$attachment "eyes" "Bip01 Head" 0.1399 -3.8601 67.6645 absolute
$attachment "mouth" "Bip01 Head" 0.80 5.80 0.15 rotate 0 -80 -90

$cdmaterials models/citizen models/citizen/city

$model male3 "male3_reference.smd" {
	eyeball righteye "Bip01 Head" -1.1646 -3.8601 67.6613 "dark_eyeball_r" 1 4 "pupil_r" 0.68
	eyeball lefteye "Bip01 Head" 1.4443 -3.8601 67.6677 "dark_eyeball_l" 1 -4 "pupil_l" 0.68

	eyelid  upper_right "male3_expressions" lowerer 1 -0.1909 neutral 0 0.1476 raiser 2 0.2307 split 0.1 eyeball righteye
	eyelid  lower_right "male3_expressions" lowerer 3 -0.2844 neutral 0 -0.1966 raiser 4 -0.0525 split 0.1 eyeball righteye
	eyelid  upper_left "male3_expressions" lowerer 1 -0.1909 neutral 0 0.1476 raiser 2 0.2307 split -0.1 eyeball lefteye
	eyelid  lower_left "male3_expressions" lowerer 3 -0.2844 neutral 0 -0.1966 raiser 4 -0.0525 split -0.1 eyeball lefteye
	
	mouth 0 "mouth" "Bip01 Head" 0 -1 0		// mouth illumination
	
	flexfile "male3_expressions" {
			$include "../standardflex.qci"
	}
	
	$include "../facerules.qci"
}

$pushd "../Bip01_Male_Animations"
$include "../Bip01_Male_Animations/Bip01_Male_Shared.qci"
$popd

$include "hitbox.qci"
$include "ragdoll.qci"
