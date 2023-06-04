//======================================
//   Old 2001-2002 Metropolice remake
//	 Model edits, QCs and custom animations by Epicplayer
//======================================

$modelname "police.mdl"

$model "police" "ihvpolice_reference.smd" 

$eyeposition 0 0 67

$cdmaterials models/Police models/manhack

$ikchain "leftankle" "Bip01 L Foot"
$ikchain "rightankle" "Bip01 R Foot"

$include cop_shared_newanims.qci
$include hitbox.qci
$include cop_ragdoll.qci