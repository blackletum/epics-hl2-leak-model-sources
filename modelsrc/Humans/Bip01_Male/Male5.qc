/*
==============================================================================

Male 5 (Andrew/Cheaple)

==============================================================================
*/

$modelname Male5.mdl

$eyeposition 0 0 70

// head controllers
$controller 0 "Bip01 Head" XR -20 20
//$controller mouth "Line01" ZR 0 45

$surfaceprop "flesh"
$attachment "eyes" "Bip01 Head" 0.1399 -3.8601 67.6645 absolute
$attachment "mouth" "Bip01 Head" 0.80 5.80 0.15 rotate 0 -80 -90

$cdmaterials models/citizen models/citizen/city

$model male5 "male5_reference.smd"

$pushd "../Bip01_Male_Animations"
$include "../Bip01_Male_Animations/Bip01_Male_Shared.qci"
$popd

$include "hitbox.qci"
$include "ragdoll.qci"
