// Created by Crowbar 0.71

$modelname "items/boxmrounds.mdl"

$staticprop

$bodygroup "body"
{
	studio "boxmrounds_reference.smd"
}


$contents "solid"

$illumposition 0 -0.008 0.481

$cdmaterials "models\items\"

$cbox 0 0 0 0 0 0

$bbox -4.415 -2.502 -0.002 4.431 2.502 0.964

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0

$animation "a_IDLE" "BoxMRounds_anims\IDLE.smd" {
	fps 5
	loop
}

$sequence "IDLE" {
	"a_IDLE"
	fadein 0.2
	fadeout 0.2
}

