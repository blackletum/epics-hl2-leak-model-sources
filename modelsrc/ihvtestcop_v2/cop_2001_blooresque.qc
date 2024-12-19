//======================================
//   Old 2001 Metropolice remake
//	 Model by Qleebsooru, QCs and custom animations by Epicplayer
//======================================

$modelname "police.mdl"

$model "police" "2001police_blooresque_reference.smd" 

//Allows valvebiped weapons to bonemerge to us
$bodygroup Handfix
{
blank
studio "Police_Nightstick_reference.smd"
studio "cop_handfix.smd"
}

$eyeposition 0 0 67

$cdmaterials models/Police_Qleebsooru models/Police models/manhack

$ikchain "leftankle" "Bip01 L Foot"
$ikchain "rightankle" "Bip01 R Foot"

$include cop_shared_newanims.qci
$include hitbox.qci
$include cop_ragdoll.qci