// TV! Free TV!

$modelname Citizen_TV.mdl

$eyeposition 0 0 70

// head controllers
$controller 0 "Bip01 Head" XR -20 20
//$controller mouth "Line01" ZR 0 45

$surfaceprop "flesh"
$mostlyopaque
$attachment "eyes" "Bip01 Head" -0.04 -6.30 67.23 absolute
$attachment "mouth" "Bip01 Head" 0.80 -5.80 -0.15 rotate 0 -80 -90

$cdmaterials models/citizen_17

$model studio "citizen.smd" {
	eyeball righteye "Bip01 Head" -1.28 -6.38 67.23 "eyeball_r" 1.00 4 "pupil_r" 0.63
	eyeball lefteye "Bip01 Head" 1.20 -6.22 67.22 "eyeball_l" 1.00 -4 "pupil_l" 0.63

	eyelid  upper_right "Citizen_expressions" lowerer 1 -0.17 neutral 0 0.10 raiser 2 0.10 split 0.1 eyeball righteye
	eyelid  lower_right "Citizen_expressions" lowerer 3 -0.26 neutral 0 -0.23 raiser 4 -0.18 split 0.1 eyeball righteye
	eyelid  upper_left "Citizen_expressions" lowerer 1 -0.16 neutral 0 0.11 raiser 2 0.11 split -0.1 eyeball lefteye
	eyelid  lower_left "Citizen_expressions" lowerer 3 -0.28 neutral 0 -0.25 raiser 4 -0.18 split -0.1 eyeball lefteye
	
	mouth 0 "mouth" "Bip01 Head" 0 -1 0		// mouth illumination
	
	flexfile "Citizen_expressions" {
			$include "../Humans/standardflex.qci"
	}
	
	$include "../Humans/facerules.qci"
}

$bodygroup TV
{

studio "../gasmaskcitizen_bip01/TV.smd"
blank

}
$pushd "../gasmaskcitizen_bip01"
$sequence Idle "Idle_TV" loop FPS 30 ACT_IDLE 1
$sequence Run "Run_TV" loop FPS 32 LX ACT_RUN 1
$sequence Run2 "Run_TV2" loop FPS 32 LX ACT_WALK 1
$sequence Die_simple Die_simple FPS 50 ACT_DIESIMPLE 1

$include "../gasmaskcitizen_bip01/hitbox.qci"
$popd