// TV! Free TV!

$modelname Citizen_TV.mdl

$eyeposition 0 0 70

// head controllers
$controller 0 "Bip01 Head" XR -20 20
//$controller mouth "Line01" ZR 0 45

$surfaceprop "flesh"
$mostlyopaque
$attachment "eyes" "Bip01 Head" -0.01 -7.09 67.25 absolute
$attachment "mouth" "Bip01 Head" 0.80 -5.80 -0.15 rotate 0 -80 -90

$cdmaterials models/citizen_17

$model studio "Citizen" {
	eyeball righteye "Bip01 Head" -1.24 -6.38 67.26 "eyeball_r" 1.00 4 "pupil_r" 0.63
	eyeball lefteye "Bip01 Head" 1.22 -6.40 67.24 "eyeball_l" 1.00 -4 "pupil_l" 0.63

	eyelid  upper_right "Citizen_expressions" lowerer 1 -0.15 neutral 0 0.14 raiser 2 0.20 split 0.1 eyeball righteye
	eyelid  lower_right "Citizen_expressions" lowerer 3 -0.31 neutral 0 -0.24 raiser 4 -0.14 split 0.1 eyeball righteye
	eyelid  upper_left "Citizen_expressions" lowerer 1 -0.14 neutral 0 0.16 raiser 2 0.21 split -0.1 eyeball lefteye
	eyelid  lower_left "Citizen_expressions" lowerer 3 -0.29 neutral 0 -0.22 raiser 4 -0.13 split -0.1 eyeball lefteye
	
	mouth 0 "mouth" "Bip01 Head" 0 -1 0		// mouth illumination
	
	flexfile "Citizen_expressions" {
			$include "../Humans/standardflex.qci"
	}
	
	$include "../Humans/facerules.qci"
}

$bodygroup TV
{

studio "TV.smd"
blank

}

$sequence Idle "Idle_TV" loop FPS 30 ACT_IDLE 1
$sequence Run "Run_TV" loop FPS 32 LX ACT_RUN 1
$sequence Run2 "Run_TV2" loop FPS 32 LX ACT_WALK 1
$sequence Die_simple Die_simple FPS 50 ACT_DIESIMPLE 1

$include "hitbox.qci"