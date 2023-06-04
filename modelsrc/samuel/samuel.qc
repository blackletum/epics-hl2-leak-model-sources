// 2003 Leak Samuel Model

$modelname "samuel.mdl"

$model "samuel" "samuel_reference.smd" {

	eyeball "eye_right" "Bip01 Head" -1.171885 -7.325116 66.898878 "eyeball_r" 1 4 "iris_unused" 0.68
	eyeball "eye_left" "Bip01 Head" 1.136116 -7.325118 66.893673 "eyeball_l" 1 -4 "iris_unused" 0.68

	eyelid upper_right "samuel_01.vta" lowerer 1 -0.06 neutral 0 0.06 raiser 2 0.15 split 1 eyeball "eye_right"
	eyelid lower_right "samuel_01.vta" lowerer 3 -0.19 neutral 0 -0.11 raiser 4 -0.05 split 1 eyeball "eye_right"
	eyelid upper_left "samuel_01.vta" lowerer 5 -0.06 neutral 0 0.06 raiser 6 0.15 split -1 eyeball "eye_left"
	eyelid lower_left "samuel_01.vta" lowerer 7 -0.19 neutral 0 -0.11 raiser 8 -0.05 split -1 eyeball "eye_left"

	mouth 0 "mouth" "Bip01 Head" 0 -1 0

	flexfile "samuel_01.vta" 
	{
		defaultflex frame 0
		// Already in eyelid lines: flex "upper_right" frame 1
		// Already in eyelid lines: flex "upper_right" frame 2
		// Already in eyelid lines: flex "lower_right" frame 3
		// Already in eyelid lines: flex "lower_right" frame 4
		// Already in eyelid lines: flex "upper_left" frame 5
		// Already in eyelid lines: flex "upper_left" frame 6
		// Already in eyelid lines: flex "lower_left" frame 7
		// Already in eyelid lines: flex "lower_left" frame 8
		flex "AU1R" frame 9
		flex "AU1L" frame 10
		flex "AU2R" frame 11
		flex "AU2L" frame 12
		flex "AU4R" frame 13
		flex "AU4L" frame 14
		flex "AU6R" frame 15
		flex "AU6L" frame 16
		flex "AU9R" frame 17
		flex "AU9L" frame 18
		flex "AU38" frame 19
		flex "AU10R" frame 20
		flex "AU10L" frame 21
		flex "AU12R" frame 22
		flex "AU12R" frame 23
		flex "AU12L" frame 24
		flex "AU12L" frame 25
		flex "AU25R" frame 26
		flex "AU25L" frame 27
		flex "AU18R" frame 28
		flex "AU18L" frame 29
		flex "AU22R" frame 30
		flex "AU22L" frame 31
		flex "AU20R" frame 32
		flex "AU20L" frame 33
		flex "AU32" frame 34
		flex "AU24" frame 35
		flex "AU31" frame 36
		flex "AU26R" frame 37
		flex "AU26L" frame 38
		flex "AU27R" frame 39
		flex "AU27L" frame 40
	}

	flexcontroller eyelid range 0 1 "right_lid_raiser"
	flexcontroller eyelid range 0 1 "left_lid_raiser"
	flexcontroller eyelid range 0 1 "right_lid_tightener"
	flexcontroller eyelid range 0 1 "left_lid_tightener"
	flexcontroller eyelid range 0 1 "right_lid_droop"
	flexcontroller eyelid range 0 1 "left_lid_droop"
	flexcontroller eyelid range 0 1 "blink"
	flexcontroller brow range 0 1 "right_inner_raiser"
	flexcontroller brow range 0 1 "left_inner_raiser"
	flexcontroller brow range 0 1 "right_outer_raiser"
	flexcontroller brow range 0 1 "left_outer_raiser"
	flexcontroller brow range 0 1 "right_lowerer"
	flexcontroller brow range 0 1 "left_lowerer"
	flexcontroller nose range 0 1 "right_cheek_raiser"
	flexcontroller nose range 0 1 "left_cheek_raiser"
	flexcontroller nose range 0 1 "wrinkler"
	flexcontroller nose range 0 1 "dilator"
	flexcontroller mouth range 0 1 "right_upper_raiser"
	flexcontroller mouth range 0 1 "left_upper_raiser"
	flexcontroller mouth range 0 1 "right_corner_puller"
	flexcontroller mouth range 0 1 "left_corner_puller"
	flexcontroller mouth range 0 1 "corner_depressor"
	flexcontroller mouth range 0 1 "chin_raiser"
	flexcontroller phoneme range 0 1 "right_part"
	flexcontroller phoneme range 0 1 "left_part"
	flexcontroller phoneme range 0 1 "right_puckerer"
	flexcontroller phoneme range 0 1 "left_puckerer"
	flexcontroller phoneme range 0 1 "right_funneler"
	flexcontroller phoneme range 0 1 "left_funneler"
	flexcontroller phoneme range 0 1 "right_stretcher"
	flexcontroller phoneme range 0 1 "left_stretcher"
	flexcontroller phoneme range 0 1 "bite"
	flexcontroller phoneme range 0 1 "presser"
	flexcontroller phoneme range 0 1 "tightener"
	flexcontroller phoneme range 0 1 "jaw_clencher"
	flexcontroller phoneme range 0 1 "jaw_drop"
	flexcontroller phoneme range 0 1 "right_mouth_drop"
	flexcontroller phoneme range 0 1 "left_mouth_drop"
	flexcontroller head range -30 30 "head_rightleft"
	flexcontroller head range -45 20 "head_updown"
	flexcontroller head range -30 30 "head_tilt"
	flexcontroller eyes range -30 30 "eyes_updown"
	flexcontroller eyes range -30 30 "eyes_rightleft"
	flexcontroller arms range 0 1 "arms_updown"
	flexcontroller arms range 0 1 "arms_inout"

	localvar AU15
	localvar AU17R
	localvar AU17L
	localvar right_lip_suppressor
	localvar left_lip_suppressor
	%upper_right_raiser = right_lid_raiser * (1 - right_lid_droop * 0.8) * (1 - blink)
	%upper_right_neutral = (1 - right_lid_droop * 0.8) * (1 - right_lid_raiser) * (1 - blink)
	%upper_right_lowerer = blink
	%upper_left_raiser = left_lid_raiser * (1 - left_lid_droop * 0.8) * (1 - blink)
	%upper_left_neutral = (1 - left_lid_droop * 0.8) * (1 - left_lid_raiser) * (1 - blink)
	%upper_left_lowerer = blink
	%lower_right_raiser = blink
	%lower_right_neutral = (1 - blink) * (1 - right_lid_tightener * 0.5) * (1 - right_cheek_raiser * 0.25)
	%lower_right_lowerer = 0
	%lower_left_raiser = blink
	%lower_left_neutral = (1 - blink) * (1 - left_lid_tightener * 0.5) * (1 - left_cheek_raiser * 0.25)
	%lower_left_lowerer = 0
	%AU1R = right_inner_raiser * (1 - right_lowerer)
	%AU1L = left_inner_raiser * (1 - left_lowerer)
	%AU2R = right_outer_raiser * (1 - right_lowerer)
	%AU2L = left_outer_raiser * (1 - left_lowerer)
	%AU4R = right_lowerer
	%AU4L = left_lowerer
	%AU6R = right_cheek_raiser
	%AU6L = left_cheek_raiser
	%AU9R = wrinkler
	%AU9L = wrinkler
	%AU38 = dilator
	%AU10R = right_upper_raiser
	%AU10L = left_upper_raiser
	%AU12R = right_corner_puller
	%AU12L = left_corner_puller
	%AU15 = corner_depressor
	%right_lip_suppressor = 1 / (right_part + right_puckerer + right_funneler) * (1 - presser) * (1 - bite)
	%left_lip_suppressor = 1 / (left_part + left_puckerer + left_funneler) * (1 - presser) * (1 - bite)
	%AU25R = right_part * right_part * %right_lip_suppressor
	%AU25L = left_part * left_part * %left_lip_suppressor
	%AU18R = right_puckerer * right_puckerer * %right_lip_suppressor
	%AU18L = left_puckerer * left_puckerer * %left_lip_suppressor
	%AU22R = right_funneler * right_funneler * %right_lip_suppressor
	%AU22L = left_funneler * left_funneler * %left_lip_suppressor
	%AU17R = chin_raiser * (1 - jaw_drop * 0.5) * (1 - bite) * (1 - 0.6 * (%AU25R + %AU18R + %AU22R))
	%AU17L = chin_raiser * (1 - jaw_drop * 0.5) * (1 - bite) * (1 - 0.6 * (%AU25L + %AU18L + %AU22L))
	%AU20R = right_stretcher * (1 - jaw_drop * 0.5)
	%AU20L = left_stretcher * (1 - jaw_drop * 0.5)
	%AU32 = bite
	%AU24 = presser + (1 - presser) * tightener
	%AU31 = jaw_clencher * jaw_clencher / (jaw_clencher + jaw_drop)
	%AU26R = jaw_drop * (1 - right_mouth_drop * (1 - bite)) * jaw_drop / (jaw_clencher + jaw_drop)
	%AU26L = jaw_drop * (1 - left_mouth_drop * (1 - bite)) * jaw_drop / (jaw_clencher + jaw_drop)
	%AU27R = jaw_drop * right_mouth_drop * (1 - bite) * jaw_drop / (jaw_clencher + jaw_drop)
	%AU27L = jaw_drop * left_mouth_drop * (1 - bite) * jaw_drop / (jaw_clencher + jaw_drop)
	%mouth = %AU27R * 0.5 + %AU27L * 0.5 + %AU22R * 0.35 + %AU22L * 0.35 + %AU18R * 0.25 + %AU18L * 0.25 + %AU25R * 0.35 + %AU25L * 0.35 + %AU32 * 0.5
}


$surfaceprop "default"

$contents "solid"

$illumposition 0.288 0.225 35.619

$cdmaterials "models\samuel\"

$cbox 0 0 0 0 0 0

$bbox -7.137 -13.232 -0.203 6.687 13.807 71.441

$definebone "Bip01" "" 0.084605 -3.56391 38.359699 0 -89.999641 0 0 0 0 0 0 0
$definebone "Bip01 Pelvis" "Bip01" 0 0 0 -89.980154 -89.999641 0 0 0 0 0 0 0
$definebone "Bip01 Spine" "Bip01 Pelvis" 3.968638 -0.00357 0.000006 -0.000079 0.045626 -0.000238 0 0 0 0 0 0
$definebone "Bip01 R Thigh" "Bip01 Spine" -3.968633 0.006742 -3.45099 -0.000145 178.724795 -174.000148 0 0 0 0 0 0
$definebone "Bip01 Spine1" "Bip01 Spine" 4.48628 -0.003572 0 0 0 0 0 0 0 0 0 0
$definebone "Bip01 Spine2" "Bip01 Spine1" 4.486282 -0.003572 0 0 0 0 0 0 0 0 0 0
$definebone "Bip01 Spine3" "Bip01 Spine2" 4.486281 -0.003572 0 0 0 0 0 0 0 0 0 0
$definebone "Bip01 L Thigh" "Bip01 Spine" -3.968631 0.006723 3.45099 -0.000145 178.724795 173.99982 0 0 0 0 0 0
$definebone "Bip01 Neck" "Bip01 Spine3" 4.48621 -0.001566 0 0.000007 -2.499998 0 0 0 0 0 0 0
$definebone "Bip01 R Clavicle" "Bip01 Neck" 0.000001 0.001573 -1.9084 78.541056 -177.546437 -0.000797 0 0 0 0 0 0
$definebone "Bip01 R UpperArm" "Bip01 R Clavicle" 3.867489 0 0.000002 -45.661816 12.209271 -8.722538 0 0 0 0 0 0
$definebone "Bip01 L Clavicle" "Bip01 Neck" -0.000001 0.001563 1.9084 -78.541056 -177.544743 -0.000801 0 0 0 0 0 0
$definebone "Bip01 L UpperArm" "Bip01 L Clavicle" 3.86749 0 -0.000004 45.661809 12.209272 8.722538 0 0 0 0 0 0
$definebone "Bip01 L Forearm" "Bip01 L UpperArm" 14.390599 0 0.000001 -0.000006 -11.459156 0 0 0 0 0 0 0
$definebone "Bip01 R Forearm" "Bip01 R UpperArm" 14.3906 -0.000001 0 0.000001 -11.459154 0 0 0 0 0 0 0
$definebone "Bip01 R Hand" "Bip01 R Forearm" 11.5953 0 0.000006 -0.000002 0.000001 89.954377 0 0 0 0 0 0
$definebone "Bip01 R Finger4" "Bip01 R Hand" 4.415191 -0.060749 -1.93105 23.49998 0.019841 0.049752 0 0 0 0 0 0
$definebone "Bip01 R Finger41" "Bip01 R Finger4" 0.923138 -0.000001 -0.000001 -0.000002 0.000003 0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger42" "Bip01 R Finger41" 0.92314 0 0.000001 -0.000002 0.000003 0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger3" "Bip01 R Hand" 4.44931 -0.067619 -0.950375 11.500007 0.009285 0.046561 0 0 0 0 0 0
$definebone "Bip01 R Finger31" "Bip01 R Finger3" 1.128472 0.000005 0 0 0 0 0 0 0 0 0 0
$definebone "Bip01 R Finger32" "Bip01 R Finger31" 1.12847 0 0 0 0 0 0 0 0 0 0 0
$definebone "Bip01 R Finger2" "Bip01 R Hand" 4.41683 -0.015213 0.200559 4.500001 0.003594 0.045767 0 0 0 0 0 0
$definebone "Bip01 R Finger21" "Bip01 R Finger2" 1.364871 0 0 0.000001 0.000004 0 0 0 0 0 0 0
$definebone "Bip01 R Finger22" "Bip01 R Finger21" 1.364869 0 0 0.000001 0.000004 0 0 0 0 0 0 0
$definebone "Bip01 R Finger1" "Bip01 R Hand" 4.451071 -0.068764 1.12166 -11.500006 -0.009283 0.04656 0 0 0 0 0 0
$definebone "Bip01 R Finger11" "Bip01 R Finger1" 1.107771 0.000003 -0.000001 0.000002 0 0 0 0 0 0 0 0
$definebone "Bip01 R Finger12" "Bip01 R Finger11" 1.107769 -0.000003 0.000001 0.000002 0 0 0 0 0 0 0 0
$definebone "Bip01 R Finger0" "Bip01 R Hand" 2.09815 0.045615 1.80521 -37.369044 5.630614 -3.388134 0 0 0 0 0 0
$definebone "Bip01 R Finger01" "Bip01 R Finger0" 0.914511 -0.000004 -0.000001 0.000004 0.000002 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger02" "Bip01 R Finger01" 0.914509 -0.000002 0.000003 0.000004 0.000002 -0.000001 0 0 0 0 0 0
$definebone "Bip01 L Hand" "Bip01 L Forearm" 11.5953 0 0.000001 -0.000006 0 -89.954377 0 0 0 0 0 0
$definebone "Bip01 L Finger4" "Bip01 L Hand" 4.415189 -0.060747 1.93105 -23.499985 0.019835 -0.049753 0 0 0 0 0 0
$definebone "Bip01 L Finger41" "Bip01 L Finger4" 0.923136 -0.000001 0.000001 -0.000002 -0.000004 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger42" "Bip01 L Finger41" 0.92314 -0.000001 -0.000001 -0.000002 -0.000004 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger3" "Bip01 L Hand" 4.449308 -0.067621 0.950375 -11.500008 0.009278 -0.046561 0 0 0 0 0 0
$definebone "Bip01 L Finger31" "Bip01 L Finger3" 1.128471 0.000002 0 -0.000001 -0.000005 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger32" "Bip01 L Finger31" 1.128471 0.000001 0 -0.000001 -0.000005 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger2" "Bip01 L Hand" 4.416829 -0.015213 -0.200559 -4.500001 0.003586 -0.045767 0 0 0 0 0 0
$definebone "Bip01 L Finger21" "Bip01 L Finger2" 1.36487 0 0 0 -0.000005 0 0 0 0 0 0 0
$definebone "Bip01 L Finger22" "Bip01 L Finger21" 1.36486 0.000001 0 0 -0.000005 0 0 0 0 0 0 0
$definebone "Bip01 L Finger1" "Bip01 L Hand" 4.451068 -0.068765 -1.12166 11.500008 -0.009288 -0.046561 0 0 0 0 0 0
$definebone "Bip01 L Finger11" "Bip01 L Finger1" 1.107769 0 0.000001 0.000002 -0.000006 -0.000002 0 0 0 0 0 0
$definebone "Bip01 L Finger12" "Bip01 L Finger11" 1.10777 -0.000001 0 0.000002 -0.000006 -0.000002 0 0 0 0 0 0
$definebone "Bip01 L Finger0" "Bip01 L Hand" 2.098149 0.045615 -1.80521 37.369058 5.630608 3.388134 0 0 0 0 0 0
$definebone "Bip01 L Finger01" "Bip01 L Finger0" 0.914511 0.000001 0 0.000004 -0.000003 -0.000002 0 0 0 0 0 0
$definebone "Bip01 L Finger02" "Bip01 L Finger01" 0.914511 -0.000004 -0.000001 0.000004 -0.000003 -0.000002 0 0 0 0 0 0
$definebone "Bip01 L Calf" "Bip01 L Thigh" 17.254902 0 0 0 -3.959162 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Foot" "Bip01 L Calf" 17.254898 0 0 0.128516 2.736309 -9.001339 0 0 0 0 0 0
$definebone "Bip01 R Calf" "Bip01 R Thigh" 17.254902 0 0 0 -3.959161 0 0 0 0 0 0 0
$definebone "Bip01 R Foot" "Bip01 R Calf" 17.2549 0 0 -0.128516 2.736314 8.001356 0 0 0 0 0 0
$definebone "Bip01 R Toe0" "Bip01 R Foot" 3.96863 5.00393 0 -0.000002 90.000207 -0.000002 0 0 0 0 0 0
$definebone "Bip01 L Toe0" "Bip01 L Foot" 3.96863 5.00393 0 -0.000001 90.000207 -0.000002 0 0 0 0 0 0
$definebone "Bip01 Head" "Bip01 Neck" 1.969137 0 0 -0.000029 10.454303 -0.000003 0 0 0 0 0 0


$sequence idle01 idle01 ACT_IDLE 1 node "node0" loop