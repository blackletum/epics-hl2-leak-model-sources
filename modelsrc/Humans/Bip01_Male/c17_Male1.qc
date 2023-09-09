/*
==============================================================================

Male 1 (Van)

==============================================================================
*/

$modelname c17_male1.mdl

$eyeposition 0 0 70

// head controllers
$controller 0 "Bip01 Head" XR -20 20
//$controller mouth "Line01" ZR 0 45

$surfaceprop "flesh"
$attachment "eyes" "Bip01 Head" -0.0031 -4.1039 67.4831 absolute
$attachment "mouth" "Bip01 Head" 0.80 5.80 0.15 rotate 0 -80 -90

$cdmaterials models/citizen models/citizen/city

$model c17_male1 "c17_male1_reference.smd" {
	eyeball righteye "Bip01 Head" -1.3598 -4.1039 67.4871 "dark_eyeball_r" 1 4 "pupil_r" 0.68
	eyeball lefteye "Bip01 Head" 1.3536 -4.1039 67.4791 "dark_eyeball_l" 1 -4 "pupil_l" 0.68

	eyelid  upper_right "male1_expressions" lowerer 1 -0.166 neutral 0 0.1405 raiser 2 0.2104 split 0.1 eyeball righteye
	eyelid  lower_right "male1_expressions" lowerer 3 -0.3399 neutral 0 -0.256 raiser 4 -0.1001 split 0.1 eyeball righteye
	eyelid  upper_left "male1_expressions" lowerer 1 -0.166 neutral 0 0.1405 raiser 2 0.2104 split -0.1 eyeball lefteye
	eyelid  lower_left "male1_expressions" lowerer 3 -0.3399 neutral 0 -0.256 raiser 4 -0.1001 split -0.1 eyeball lefteye
	
	mouth 0 "mouth" "Bip01 Head" 0 -1 0		// mouth illumination
	
	flexfile "male1_expressions" {
			$include "../standardflex.qci"
	}
	
	$include "../facerules.qci"
}

$pushd "../Bip01_Male_Animations"
$include "../Bip01_Male_Animations/Bip01_Male_Shared.qci"
$popd

$include "hitbox.qci"
$include "ragdoll.qci"
