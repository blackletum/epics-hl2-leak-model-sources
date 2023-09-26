// Created by Crowbar 0.71

$modelname "wscanner_single.mdl"

$bodygroup "Body"
{
	studio "Waste_Scanner_Reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 2.207 3.648 2.62

$cdmaterials "models\obsolete\waste_scanner\"

$attachment "0" "BombStart" 0 0 0 rotate 0 0 0
$attachment "1" "Antenna" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -20.207 -13.05 -13.809 14.78 15.821 16.838

$controller 0 "Dummy (Root)" ZR 0 360
$controller 1 "Antenna Base" Y 0 24

$definebone "Dummy (Root)" "" -0.085233 0 0 0 0 0 0 0 0 0 0 0
$definebone "Eye1 Base" "Dummy (Root)" -8.587989 -4.985116 3.192251 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "Eye1a" "Eye1 Base" 2.856932 0.843401 0 0 0 0 0 0 0 0 0 0
$definebone "Eye1b" "Eye1a" 2.981322 0.848428 0 0 0 0 0 0 0 0 0 0
$definebone "Eye2 Base" "Dummy (Root)" -9.652059 -5.008611 -0.113018 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "Eye2a" "Eye2 Base" 2.816404 -0.157259 0 0 0 0 0 0 0 0 0 0
$definebone "Eye2b" "Eye2a" 3.159498 0.787023 0.000001 0 0 0 0 0 0 0 0 0
$definebone "Eye3 Base" "Dummy (Root)" -8.093419 -5.159442 -2.918486 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "Eye3a" "Eye3 Base" 2.911929 -0.727072 -0.000001 0 0 0 0 0 0 0 0 0
$definebone "Eye3b" "Eye3a" 2.824686 -1.174781 0 0 0 0 0 0 0 0 0 0
$definebone "Pupil Base" "Dummy (Root)" 0 -5.269412 0 0 0 0 0 0 0 0 0 0
$definebone "Pupil" "Pupil Base" 0 -4.156281 0 0 0 0 0 0 0 0 0 0
$definebone "Antenna Base" "Dummy (Root)" -2.42474 6.138015 -4.458282 0 0 0 0 0 0 0 0 0
$definebone "Antenna" "Antenna Base" 5.281212 -1.931063 -6.397323 0 0 0 0 0 0 0 0 0
$definebone "BombStart" "Dummy (Root)" 9.669836 -9.297738 -1.540296 0 0 0 0 0 0 0 0 0


$sequence "fly1" {
	"wscanner_single_anims\fly1.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "fly2" {
	"wscanner_single_anims\fly2.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "fly3" {
	"wscanner_single_anims\fly3.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "fly4" {
	"wscanner_single_anims\fly4.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "fly5" {
	"wscanner_single_anims\fly5.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "fly6" {
	"wscanner_single_anims\fly6.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "flinchback" {
	"wscanner_single_anims\flinchback.smd"
	activity "ACT_WSCANNER_FLINCH_BACK" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "flinchfront" {
	"wscanner_single_anims\flinchfront.smd"
	activity "ACT_WSCANNER_FLINCH_FRONT" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "flinchleft" {
	"wscanner_single_anims\flinchleft.smd"
	activity "ACT_WSCANNER_FLINCH_LEFT" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "flinchright" {
	"wscanner_single_anims\flinchright.smd"
	activity "ACT_WSCANNER_FLINCH_RIGHT" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "rangeattack" {
	"wscanner_single_anims\rangeattack.smd"
	activity "ACT_RANGE_ATTACK1" 1
	{ event 1 8 "" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}
