// Created by Crowbar 0.71

$modelname "items/hevsuit.mdl"

$staticprop

$bodygroup "Body"
{
	studio "hevsuit_reference.smd"
}


$contents "solid"

$illumposition 0.376 0.248 32.264

$cdmaterials "models\hevsuit\"

$cbox 0 0 0 0 0 0

$bbox -8.716 -13.513 -0.027 8.22 14.266 64.555

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0

$animation "a_idle" "hevsuit_anims\idle.smd" {
	fps 30
}

$sequence "idle" {
	"a_idle"
	fadein 0.2
	fadeout 0.2
}

