// Green "Aquatic" Bullsquid rigged to red bullsquid animations
// Fixed by The One Epicplayer

$modelname "bullsquid.mdl"

$model studio "Bullsquid_reference_new"

$surfaceprop alienflesh
$contents solid

$eyeposition 0 0 24

$cdmaterials models\bullsquid\

$attachment "Mouth" "Bullsquid.Tent_Bone15" 0 0 0 rotate 0 -45 90

$poseparameter move_yaw -180 180 loop 0

$include shared_new.qci
$include 2001_anims_shared.qci
//$sequence eat_loop bullsquid_anims\eat loop