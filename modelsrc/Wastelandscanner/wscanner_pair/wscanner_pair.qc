// Created by Crowbar 0.71

$modelname "wscanner_pair.mdl"

$bodygroup "Body"
{
	studio "Wscanner_pair_Reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -1.942 -0.122 -41.251

$cdmaterials "models\obsolete\waste_scanner\"

$attachment "0" "BombStart" 0 0 0 rotate 0 0 0
$attachment "1" "Dummy (Root)" 0 0 0 rotate 0 0 0
$attachment "2" "bDummy (Root)" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -20.205 -24.873 -22.592 16.401 31.555 25.67

$controller 0 "Base Dummy" ZR 0 360

$definebone "Base Dummy" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "Dummy (Root)" "Base Dummy" -11.923171 -0.001123 8.284714 0 0 0 0 0 0 0 0 0
$definebone "Eye1 Base" "Dummy (Root)" -8.587989 -4.985116 3.192251 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "Eye1a" "Eye1 Base" 2.856932 0.843401 -0.000001 0 0 0 0 0 0 0 0 0
$definebone "Eye1b" "Eye1a" 2.981321 0.848428 0 0 0 0 0 0 0 0 0 0
$definebone "Eye2 Base" "Dummy (Root)" -9.652059 -5.008611 -0.113018 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "Eye2a" "Eye2 Base" 2.816404 -0.157259 0.000001 0 0 0 0 0 0 0 0 0
$definebone "Eye2b" "Eye2a" 3.159499 0.787023 -0.000001 0 0 0 0 0 0 0 0 0
$definebone "Eye3 Base" "Dummy (Root)" -8.093419 -5.159442 -2.918486 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "Eye3a" "Eye3 Base" 2.911929 -0.727072 0 0 0 0 0 0 0 0 0 0
$definebone "Eye3b" "Eye3a" 2.824687 -1.174781 0.000001 0 0 0 0 0 0 0 0 0
$definebone "Pupil Base" "Dummy (Root)" 0 -5.269412 0 0 0 0 0 0 0 0 0 0
$definebone "Pupil" "Pupil Base" 0 -4.156281 0 0 0 0 0 0 0 0 0 0
$definebone "Antenna Base" "Dummy (Root)" -2.42474 6.138015 -4.458282 0 0 0 0 0 0 0 0 0
$definebone "BombStart" "Dummy (Root)" 9.669836 -9.297738 -1.540296 0 0 0 0 0 0 0 0 0
$definebone "bDummy (Root)" "Base Dummy" 15.801188 -0.10937 -9.010477 0.237606 6.309125 13.64287 0 0 0 0 0 0
$definebone "bEye1 Base" "bDummy (Root)" -8.587989 -4.985116 3.19225 0.000001 -89.999982 89.999982 0 0 0 0 0 0
$definebone "bEye1a" "bEye1 Base" 2.856932 0.843402 0 0 -0.000001 0 0 0 0 0 0 0
$definebone "bEye1b" "bEye1a" 2.981319 0.848428 0 0 -0.000001 0 0 0 0 0 0 0
$definebone "bEye2 Base" "bDummy (Root)" -9.652059 -5.008609 -0.113018 0.000001 -89.999982 89.999982 0 0 0 0 0 0
$definebone "bEye2a" "bEye2 Base" 2.816405 -0.15726 0 0 -0.000001 0 0 0 0 0 0 0
$definebone "bEye2b" "bEye2a" 3.159498 0.787023 0 0 -0.000001 0 0 0 0 0 0 0
$definebone "bEye3 Base" "bDummy (Root)" -8.093419 -5.159441 -2.918486 0.000001 -89.999982 89.999982 0 0 0 0 0 0
$definebone "bEye3a" "bEye3 Base" 2.911928 -0.727072 0 0 -0.000001 0 0 0 0 0 0 0
$definebone "bEye3b" "bEye3a" 2.824685 -1.174781 0 0 -0.000001 0 0 0 0 0 0 0
$definebone "bPupil Base" "bDummy (Root)" 0.000001 -5.269411 -0.000001 0 0 0.000001 0 0 0 0 0 0
$definebone "bPupil" "bPupil Base" -0.000001 -4.15628 0 0 0 0.000001 0 0 0 0 0 0
$definebone "bAntenna Base" "bDummy (Root)" -2.42474 6.138013 -4.458282 0 0 0.000001 0 0 0 0 0 0


$sequence "hover" {
	"wscanner_pair_anims\hover.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "hover2" {
	"wscanner_pair_anims\hover2.smd"
	activity "ACT_IDLE" 2
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "hover3" {
	"wscanner_pair_anims\hover3.smd"
	activity "ACT_IDLE" 3
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "hover4" {
	"wscanner_pair_anims\hover4.smd"
	activity "ACT_IDLE" 4
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "hover5" {
	"wscanner_pair_anims\hover5.smd"
	activity "ACT_IDLE" 5
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "rangeattack" {
	"wscanner_pair_anims\rangeattack.smd"
	activity "ACT_RANGE_ATTACK1" 1
	{ event 1 8 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "join1" {
	"wscanner_pair_anims\join1.smd"
	activity "ACT_WSCANNER_JOIN" 1
	{ event 2 90 "" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "join2" {
	"wscanner_pair_anims\join2.smd"
	activity "ACT_WSCANNER_JOIN" 2
	{ event 2 90 "" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "join3" {
	"wscanner_pair_anims\join3.smd"
	activity "ACT_WSCANNER_JOIN" 3
	{ event 2 90 "" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "join4" {
	"wscanner_pair_anims\join4.smd"
	activity "ACT_WSCANNER_JOIN" 4
	{ event 2 90 "" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "join5" {
	"wscanner_pair_anims\join5.smd"
	activity "ACT_WSCANNER_JOIN" 5
	{ event 2 90 "" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "join6" {
	"wscanner_pair_anims\join6.smd"
	activity "ACT_WSCANNER_JOIN" 6
	{ event 2 90 "" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}
