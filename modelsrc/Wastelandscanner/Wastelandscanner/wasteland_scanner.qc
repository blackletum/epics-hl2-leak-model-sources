// Created by Crowbar 0.71

$modelname "wasteland_scanner.mdl"

$bodygroup "Body"
{
	studio "Wasteland_Scanner_Reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 1.672 2.9 -3.474

$cdmaterials "models\wasteland_scanner\"

$cbox 0 0 0 0 0 0

$bbox -20.207 -12.079 -20.756 14.407 15.423 13.809

$definebone "wasteland_scanner" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0


$sequence "idle" {
	"wasteland_scanner_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
