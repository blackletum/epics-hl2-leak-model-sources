// Wasteland Scanner (Tri)

$modelname WScanner_Tri.mdl

$model Body WScanner_Tri_Reference.smd
$cdmaterials models\obsolete\waste_scanner

$mostlyopaque
$surfaceprop "metal"

$attachment "0" "Pupilz" 0 0 0 rotate 0 0 0
$attachment "1" "bPupilz" 0 0 0 rotate 0 0 0
$attachment "2" "cPupilz" 0 0 0 rotate 0 0 0
$attachment "3" "beamconverge" 0 0 0 rotate 0 0 0

$controller 0 "Base Dummy" ZR 0 360

/*
$definebone "Base Dummy" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "Dummy (Root)" "Base Dummy" -15.287279 2.060522 -3.435295 -7.639304 -16.286438 6.250913 0 0 0 0 0 0
$definebone "Eye1 Base" "Dummy (Root)" -8.58799 -4.985116 3.192251 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "Eye1a" "Eye1 Base" 2.856931 0.843401 0 -0.000001 0 0 0 0 0 0 0 0
$definebone "Eye1b" "Eye1a" 2.981321 0.848428 -0.000001 -0.000001 0 0 0 0 0 0 0 0
$definebone "Eye2 Base" "Dummy (Root)" -9.65206 -5.008612 -0.113018 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "Eye2a" "Eye2 Base" 2.816404 -0.157259 -0.000003 -0.000001 0 0 0 0 0 0 0 0
$definebone "Eye2b" "Eye2a" 3.159499 0.787024 0.000001 -0.000001 0 0 0 0 0 0 0 0
$definebone "Eye3 Base" "Dummy (Root)" -8.093419 -5.159442 -2.918486 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "Eye3a" "Eye3 Base" 2.911929 -0.727072 0 -0.000001 0 0 0 0 0 0 0 0
$definebone "Eye3b" "Eye3a" 2.824686 -1.174781 -0.000001 -0.000001 0 0 0 0 0 0 0 0
$definebone "Pupil Base" "Dummy (Root)" -0.000001 -5.269413 0 0 0 0 0 0 0 0 0 0
$definebone "Pupil" "Pupil Base" 0.000002 -4.156281 0 0 0 0 0 0 0 0 0 0
$definebone "Pupilz" "Pupil" 0.000001 -4.462047 0 0 0 0 0 0 0 0 0 0
$definebone "Antenna Base" "Dummy (Root)" -2.42474 6.138014 -4.458282 0 0 0 0 0 0 0 0 0
$definebone "bDummy (Root)" "Base Dummy" 1.858831 -2.372835 16.005415 0 6.000014 14.999978 0 0 0 0 0 0
$definebone "bEye1 Base" "bDummy (Root)" -8.58799 -4.985116 3.192253 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "bEye1a" "bEye1 Base" 2.856931 0.843402 0 0 0 0 0 0 0 0 0 0
$definebone "bEye1b" "bEye1a" 2.981321 0.848427 0 0 0 0 0 0 0 0 0 0
$definebone "bEye2 Base" "bDummy (Root)" -9.652059 -5.008611 -0.113017 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "bEye2a" "bEye2 Base" 2.816404 -0.157259 0 0 0 0 0 0 0 0 0 0
$definebone "bEye2b" "bEye2a" 3.159499 0.787024 -0.000001 0 0 0 0 0 0 0 0 0
$definebone "bEye3 Base" "bDummy (Root)" -8.09342 -5.159442 -2.918486 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "bEye3a" "bEye3 Base" 2.911929 -0.727072 0 0 0 0 0 0 0 0 0 0
$definebone "bEye3b" "bEye3a" 2.824686 -1.174781 0 0 0 0 0 0 0 0 0 0
$definebone "bPupil Base" "bDummy (Root)" 0 -5.269412 0.000001 0 0 0 0 0 0 0 0 0
$definebone "bPupil" "bPupil Base" 0 -4.156281 0 0 0 0 0 0 0 0 0 0
$definebone "bPupilz" "bPupil" 0 -4.462046 0.000001 0 0 0 0 0 0 0 0 0
$definebone "bAntenna Base" "bDummy (Root)" -2.42474 6.138015 -4.458282 0 0 0 0 0 0 0 0 0
$definebone "cDummy (Root)" "Base Dummy" 11.587173 7.930343 -9.008001 -5.279233 18.798634 15.125514 0 0 0 0 0 0
$definebone "cEye1 Base" "cDummy (Root)" -8.587987 -4.985115 3.19225 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "cEye1a" "cEye1 Base" 2.856931 0.843401 0 0.000001 0.000001 0 0 0 0 0 0 0
$definebone "cEye1b" "cEye1a" 2.981321 0.848428 0 0.000001 0.000001 0 0 0 0 0 0 0
$definebone "cEye2 Base" "cDummy (Root)" -9.652057 -5.00861 -0.11302 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "cEye2a" "cEye2 Base" 2.816404 -0.157258 0 0.000001 0.000001 0 0 0 0 0 0 0
$definebone "cEye2b" "cEye2a" 3.159499 0.787023 0 0.000001 0.000001 0 0 0 0 0 0 0
$definebone "cEye3 Base" "cDummy (Root)" -8.093418 -5.159441 -2.918487 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "cEye3a" "cEye3 Base" 2.911928 -0.727071 0 0.000001 0.000001 0 0 0 0 0 0 0
$definebone "cEye3b" "cEye3a" 2.824686 -1.174781 0 0.000001 0.000001 0 0 0 0 0 0 0
$definebone "cPupil Base" "cDummy (Root)" 0 -5.269411 -0.000001 0 0 0 0 0 0 0 0 0
$definebone "cPupil" "cPupil Base" 0 -4.156281 0 0 0 0 0 0 0 0 0 0
$definebone "cPupilz" "cPupil" 0.000001 -4.462045 0.000001 0 0 0 0 0 0 0 0 0
$definebone "cAntenna Base" "cDummy (Root)" -2.424739 6.138014 -4.458283 0 0 0 0 0 0 0 0 0
$definebone "beamconverge" "Base Dummy" 0.118909 -30.920042 0.33968 0 0 89.999982 0 0 0 0 0 0
*/

$pushd wscanner_tri_anims

$sequence hover 	hover 	ACT_IDLE 1 loop
$sequence hover2 	hover2 	ACT_IDLE 2 loop
$sequence hover3 	hover3 	ACT_IDLE 3 loop
$sequence hover4 	hover4 	ACT_IDLE 4 loop
$sequence hover5 	hover5 	ACT_IDLE 5 loop

$sequence join1 join1 ACT_WSCANNER_JOIN 1 {
	{ event 2 77 }
	{ event 2 90 }
}

$sequence join2 join2 ACT_WSCANNER_JOIN 2 {
	{ event 2 80 }
	{ event 2 90 }
}

$sequence join3 join3 ACT_WSCANNER_JOIN 3 {
	{ event 2 85 }
	{ event 2 90 }
}

$sequence join4 join4 ACT_WSCANNER_JOIN 4 {
	{ event 2 80 }
	{ event 2 90 }
}

$sequence join5 join5 ACT_WSCANNER_JOIN 5 {
	{ event 2 45 }
	{ event 2 70 }
}
$popd