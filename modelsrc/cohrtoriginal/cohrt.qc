//Original 2003 Leak Cohrt
//Minor fixes by Epicplayer

$modelname "cohrt.mdl"

$model "cohrt" "cohrt_reference_fixed.smd" {

	eyeball "eye_right" "Bip01 Head" -1.223600 -5.194397 66.442346 "eyeball_r" 1 4 "pupil_r" 0.56
	eyeball "eye_left" "Bip01 Head" 1.329400 -5.194396 66.443227 "eyeball_l" 1 -4 "pupil_l" 0.56
}

$cdmaterials models\kleiner

$cbox 0 0 0 0 0 0

$bbox -6.537 -12.938 -0.101 7.456 13.163 70.329

$sequence idle01 idle ACT_IDLE 1 loop