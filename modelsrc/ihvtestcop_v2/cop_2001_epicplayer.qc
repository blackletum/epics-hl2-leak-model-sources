//======================================
//   Metropolice
//======================================

$modelname "police.mdl"

$model "police" "2001police_ep_reference.smd" 

$eyeposition 0 0 67

$cdmaterials models/Police models/manhack

$ikchain "leftankle" "Bip01 L Foot"
$ikchain "rightankle" "Bip01 R Foot"

$include cop_shared_newanims.qci
$include hitbox.qci
$include cop_ragdoll.qci