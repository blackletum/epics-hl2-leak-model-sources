// Wasteland Scanner (Pair)

$modelname WScanner_Pair.mdl

$model Body Wscanner_pair_Reference.smd
$cdmaterials models\obsolete\waste_scanner

$mostlyopaque
$surfaceprop "metal"

$attachment "0" "BombStart" 0 0 0 rotate 0 0 0
$attachment "1" "Dummy (Root)" 0 0 0 rotate 0 0 0
$attachment "2" "bDummy (Root)" 0 0 0 rotate 0 0 0

$controller 0 "Base Dummy" ZR 0 360

/*
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
*/

$pushd wscanner_pair_anims

$sequence hover 	hover 	ACT_IDLE 1 loop
$sequence hover2 	hover2 	ACT_IDLE 2 loop
$sequence hover3 	hover3 	ACT_IDLE 3 loop
$sequence hover4 	hover4 	ACT_IDLE 4 loop
$sequence hover5 	hover5 	ACT_IDLE 5 loop

$sequence rangeattack rangeattack ACT_RANGE_ATTACK1 1 { event 1 8 }

$sequence join1 join1 ACT_WSCANNER_JOIN 1 snap { event 2 90 }
$sequence join2 join2 ACT_WSCANNER_JOIN 2 snap { event 2 90 }
$sequence join3 join3 ACT_WSCANNER_JOIN 3 snap { event 2 90 }
$sequence join4 join4 ACT_WSCANNER_JOIN 4 snap { event 2 90 }
$sequence join5 join5 ACT_WSCANNER_JOIN 5 snap { event 2 90 }
$sequence join6 join6 ACT_WSCANNER_JOIN 6 snap { event 2 90 }

$popd