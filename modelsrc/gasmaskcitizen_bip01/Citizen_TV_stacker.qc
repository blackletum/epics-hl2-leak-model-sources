// TV! Free TV!

$modelname Citizen_TV.mdl

$eyeposition 0 0 70

// head controllers
$controller 0 "Bip01 Head" XR -20 20
//$controller mouth "Line01" ZR 0 45

$surfaceprop "flesh"
$opaque
$attachment "eyes" "Bip01 Head" -0.01 -7.54 68.52 absolute
$attachment "mouth" "Bip01 Head" 0.80 -5.80 -0.15 rotate 0 -80 -90

$cdmaterials models/citizen_17

$model studio "gasmaskcitizen_stacker_reference"

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