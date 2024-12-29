//======================================
//   Old 2000-2001 Metropolice remake
//	 Model by Zapagoogas, QCs and custom animations by Epicplayer
//======================================

$modelname "police.mdl"

$model "police" "2001police_Zapagoogas_reference.smd" 

//Allows valvebiped weapons to bonemerge to us
$bodygroup Handfix
{
blank
studio "Police_Nightstick_reference.smd"
studio "cop_handfix.smd"
}

$eyeposition 0 0 67

$cdmaterials models/Police_Zapagoogas models/Police models/manhack

$ikchain "leftankle" "Bip01 L Foot"
$ikchain "rightankle" "Bip01 R Foot"

$include cop_shared_newanims.qci
$include hitbox.qci
$include cop_ragdoll.qci