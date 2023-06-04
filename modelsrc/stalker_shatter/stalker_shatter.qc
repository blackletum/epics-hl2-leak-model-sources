//Funny shattering Stalker
//Original model by Valve, shatter simulation and model by Epicplayer

$modelname "stalker_shatter.mdl"
$model studio "Stalker_Fracture_combined.smd"

$surfaceprop "flesh"

$illumposition 0.888 -3.547 33.941

$eyeposition 0 0 73

$cdmaterials models\stalker

$sequence idle anims/ArmatureAction ACT_IDLE 1 frame 0 1 loop
$sequence die anims/ArmatureAction ACT_DIESIMPLE 1 frame 1 499 fps 50
$sequence dead anims/ArmatureAction frame 499 499 loop