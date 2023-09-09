/*
==============================================================================

Male 4 (Trav)
Head remake by Xinus22

==============================================================================
*/

$modelname Male4.mdl

$eyeposition 0 0 70

// head controllers
$controller 0 "Bip01 Head" XR -20 20
//$controller mouth "Line01" ZR 0 45

$surfaceprop "flesh"
$attachment "eyes" "Bip01 Head" 0.1399 -3.8601 67.6645 absolute
$attachment "mouth" "Bip01 Head" 0.80 5.80 0.15 rotate 0 -80 -90

$cdmaterials models/citizen models/citizen/city

$model male4 "male4_reference.smd" {
	eyeball "eye_right" "Bip01 Head" -1.257180 -3.357029 67.318299 "eyeball_r" 1 4 "pupil_r" 0.68
	eyeball "eye_left" "Bip01 Head" 1.263310 -3.357029 67.318206 "eyeball_l" 1 -4 "pupil_l" 0.68

	eyelid upper_right "male4_expressions" lowerer 1 -0.25 neutral 0 0.17 raiser 2 0.25 split 1 eyeball "eye_right"
	eyelid lower_right "male4_expressions" lowerer 3 -0.27 neutral 0 -0.22 raiser 4 -0.03 split 1 eyeball "eye_right"
	eyelid upper_left "male4_expressions" lowerer 5 -0.25 neutral 0 0.17 raiser 6 0.25 split -1 eyeball "eye_left"
	eyelid lower_left "male4_expressions" lowerer 7 -0.27 neutral 0 -0.22 raiser 8 -0.03 split -1 eyeball "eye_left"
	
	mouth 0 "mouth" "Bip01 Head" 0 -1 0		// mouth illumination
	
	flexfile "male4_expressions" 
	{
		defaultflex frame 0

		flex "AU42" frame 9
		flex "AU1R"	frame 10 split 1	
		flex "AU1L"	frame 10 split -1	
		flex "AU2R"	frame 11 split 1.5	
		flex "AU2L"	frame 11 split -1.5
		flex "AU4R"	frame 12 split 1.5	
		flex "AU4L"	frame 12 split -1.5
		flex "AU1AU2R"	frame 13 split 1.5	
		flex "AU1AU2L"	frame 13 split -1.5	
		flex "AU12L" frame 14 position 0.5 split -1.0
		flex "AU12R" frame 14 position 0.5 split 1.0
		flex "AU12L" frame 15 position 1.0 split -1.0
		flex "AU12R" frame 15 position 1.0 split 1.0
		flex "AU12AU25" frame 16
		flex "AU15L" frame 17 split -1.0
		flex "AU15R" frame 17 split 1.0
		flex "AU17L" frame 18 split -1.0
		flex "AU17R" frame 18 split 1.0
		flex "AU10L" 	frame 19 split -1.0
		flex "AU10R" 	frame 19 split 1.0
		flex "AU16" frame 20
		flex "AU6L"	frame 21 split -1.0	
		flex "AU6R"	frame 21 split 1.0	
		flex "AU9L"	frame 22 split -1.0	
		flex "AU9R"	frame 22 split 1.0
		flex "AU25L"	frame 23 split -1.0
		flex "AU25R"	frame 23 split 1.0
		flex "AU18L"  	frame 24 split -1.0 position 0.8
		flex "AU18R"  	frame 24 split 1.0 position 0.8
		flex "AU18L" 	frame 25 split -1.0 position 1.0
		flex "AU18R" 	frame 25 split 1.0 position 1.0
		flex "AU22L"  	frame 26 split -1.0
		flex "AU22R"  	frame 26 split 1.0
		flex "AU20L"  	frame 27 split -1.0
		flex "AU20R"  	frame 27 split 1.0
		flex "AU32" frame 28
		flex "AU24" frame 29
		flex "AU38" frame 30
		flex "AU31" frame 31
		flex "AU26L"  	frame 32 split -1.5
		flex "AU26R"  	frame 32 split 1.5
		flex "AU27L" 	frame 33 split -1.5	
		flex "AU27R" 	frame 33 split 1.5	
		flex "AU26ZL" 	frame 34 split -1.5
		flex "AU26ZR" 	frame 34 split 1.5
		flex "AU27ZL" 	frame 35 split -1.5
		flex "AU27ZR" 	frame 35 split 1.5
	}

	$include "../facerules.qci"
}

$pushd "../Bip01_Male_Animations"
$include "../Bip01_Male_Animations/Bip01_Male_Shared.qci"
$popd

$include "hitbox.qci"
$include "ragdoll.qci"
