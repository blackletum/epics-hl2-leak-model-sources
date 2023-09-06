// 2003 Leak Borealis Worker

$modelname BorealisWorker.mdl


$model "borealisworker" "borealisworker_reference.smd" {

	eyeball "eye_right" "Bip01 Head" -1.272652 -3.803348 67.202854 "eyeball_r" 1 4 "pupil_r" 0.64
	eyeball "eye_left" "Bip01 Head" 1.229364 -3.803364 67.155714 "eyeball_l" 1 -4 "pupil_l" 0.64
/*
	eyelid upper_right "borealisworker_01.vta" lowerer 1 -0.17 neutral 0 0.16 raiser 2 0.25 split 1 eyeball "eye_right"
	eyelid lower_right "borealisworker_01.vta" lowerer 3 -0.26 neutral 0 -0.19 raiser 4 -0.04 split 1 eyeball "eye_right"
	eyelid upper_left "borealisworker_01.vta" lowerer 5 -0.17 neutral 0 0.16 raiser 6 0.25 split -1 eyeball "eye_left"
	eyelid lower_left "borealisworker_01.vta" lowerer 7 -0.26 neutral 0 -0.19 raiser 8 -0.04 split -1 eyeball "eye_left"

	mouth 0 "mouth" "Bip01 Head" 0 -1 0

	flexfile "borealisworker_01.vta" 
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
		flex "AU15" frame 26
		flex "AU17R" frame 27
		flex "AU17L" frame 28
		flex "AU25R" frame 29
		flex "AU25L" frame 30
		flex "AU18R" frame 31
		flex "AU18L" frame 32
		flex "AU22R" frame 33
		flex "AU22L" frame 34
		flex "AU20R" frame 35
		flex "AU20L" frame 36
		flex "AU32" frame 37
		flex "AU24" frame 38
		flex "AU31" frame 39
		flex "AU26R" frame 40
		flex "AU26L" frame 41
		flex "AU27R" frame 42
		flex "AU27L" frame 43
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
*/
}


$illumposition -2.977 0.352 36.081

$eyeposition 0 0 67

$cdmaterials models\Citizen\borealis
$cdmaterials models\extras
/*
$cbox 0 0 0 0 0 0

$bbox -9.132 -18.631 -0.039 8.427 12.677 72.2

$definebone "Bip01" "" 0.102659 0 39.248192 0 -89.999921 0 0 0 0 0 0 0
$definebone "Bip01 Pelvis" "Bip01" 0 0 0 -89.980215 -89.999921 0 0 0 0 0 0 0
$definebone "Bip01 Spine" "Bip01 Pelvis" 3.994683 -0.002761 0.000006 -0.000057 0.445647 -0.000229 0 0 0 0 0 0
$definebone "Bip01 Spine1" "Bip01 Spine" 3.469886 -0.003582 0 0 -2.400006 0 0 0 0 0 0 0
$definebone "Bip01 Spine2" "Bip01 Spine1" 4.502726 -0.004682 0 0 -1.800004 0 0 0 0 0 0 0
$definebone "Bip01 Spine3" "Bip01 Spine2" 5.883052 -0.003218 0 0 1.400022 0 0 0 0 0 0 0
$definebone "Bip01 Neck" "Bip01 Spine3" 4.043221 -0.001431 0 -0.000057 30.200033 0 0 0 0 0 0 0
$definebone "Bip01 Head" "Bip01 Neck" 2.078235 0 0 0.000057 -19.145727 0 0 0 0 0 0 0
$definebone "Bip01 L Clavicle" "Bip01 Neck" 0.000001 0.001649 2.03033 -64.342465 166.766992 -18.749298 0 0 0 0 0 0
$definebone "Bip01 L UpperArm" "Bip01 L Clavicle" 5.892992 0 -0.000001 18.656657 -0.735963 7.287165 0 0 0 0 0 0
$definebone "Bip01 L Forearm" "Bip01 L UpperArm" 11.807184 0 -0.000005 0.000005 -3.45906 0 0 0 0 0 0 0
$definebone "Bip01 L Hand" "Bip01 L Forearm" 10.14105 0 -0.000002 0.000005 0 -89.954377 0 0 0 0 0 0
$definebone "Bip01 L Finger0" "Bip01 L Hand" 0.946543 0.394268 -1.857905 31.117106 26.777299 85.360112 0 0 0 0 0 0
$definebone "Bip01 L Finger01" "Bip01 L Finger0" 1.068138 -0.000001 -0.000002 0.000001 0.000002 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger02" "Bip01 L Finger01" 1.068138 -0.000001 -0.000003 0.000001 0.000002 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger1" "Bip01 L Hand" 3.309149 -0.05013 -1.316189 10.999872 0.602357 0.07013 0 0 0 0 0 0
$definebone "Bip01 L Finger11" "Bip01 L Finger1" 1.222446 -0.000001 0 -0.000001 0.60001 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger12" "Bip01 L Finger11" 1.135131 0.000003 0 -0.000001 0.600009 0.000001 0 0 0 0 0 0
$definebone "Bip01 L Finger2" "Bip01 L Hand" 3.262002 -0.002943 -0.313855 0.000458 0.600009 -0.045607 0 0 0 0 0 0
$definebone "Bip01 L Finger21" "Bip01 L Finger2" 1.426187 0 0 0 0.600009 0 0 0 0 0 0 0
$definebone "Bip01 L Finger22" "Bip01 L Finger21" 1.324314 0.000002 0 0 0.600008 0 0 0 0 0 0 0
$definebone "Bip01 L Finger3" "Bip01 L Hand" 3.290776 -0.029857 0.656452 -6.998909 0.608659 -0.161287 0 0 0 0 0 0
$definebone "Bip01 L Finger31" "Bip01 L Finger3" 1.222445 -0.000003 0 -0.000001 0.600005 0 0 0 0 0 0 0
$definebone "Bip01 L Finger32" "Bip01 L Finger31" 1.135127 -0.000005 0 0 0.600005 0 0 0 0 0 0 0
$definebone "Bip01 L Finger4" "Bip01 L Hand" 3.226039 0.008338 1.544951 -20.498308 0.657648 -0.273014 0 0 0 0 0 0
$definebone "Bip01 L Finger41" "Bip01 L Finger4" 1.018707 -0.000001 -0.000001 0.000001 0.60001 -0.000002 0 0 0 0 0 0
$definebone "Bip01 L Finger42" "Bip01 L Finger41" 0.945942 -0.000001 0 0.000001 0.600009 -0.000002 0 0 0 0 0 0
$definebone "Bip01 R Clavicle" "Bip01 Neck" 0.000003 0.00166 -2.03033 64.342417 166.76635 18.748611 0 0 0 0 0 0
$definebone "Bip01 R UpperArm" "Bip01 R Clavicle" 5.892993 0 0.000002 -18.656655 -0.735962 -7.287164 0 0 0 0 0 0
$definebone "Bip01 R Forearm" "Bip01 R UpperArm" 11.807188 0 0.000004 -0.000006 -3.459059 0 0 0 0 0 0 0
$definebone "Bip01 R Hand" "Bip01 R Forearm" 10.141053 0 0.000005 -0.000006 0.000002 89.954377 0 0 0 0 0 0
$definebone "Bip01 R Finger0" "Bip01 R Hand" 1.003339 0.394276 1.857905 -31.117102 26.777299 -85.360105 0 0 0 0 0 0
$definebone "Bip01 R Finger01" "Bip01 R Finger0" 1.068138 0 0.000002 -0.000001 0.000008 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger02" "Bip01 R Finger01" 1.068139 0 0.000003 -0.000001 0.000008 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger1" "Bip01 R Hand" 3.507702 -0.050124 1.316189 -10.999869 0.602361 -0.07013 0 0 0 0 0 0
$definebone "Bip01 R Finger11" "Bip01 R Finger1" 1.222446 0 0 0.000005 0.600013 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger12" "Bip01 R Finger11" 1.135132 0 0 0.000004 0.600012 -0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger2" "Bip01 R Hand" 3.457726 -0.00294 0.313855 -0.000457 0.600008 0.045608 0 0 0 0 0 0
$definebone "Bip01 R Finger21" "Bip01 R Finger2" 1.42619 0.000002 0 0.000002 0.600008 0 0 0 0 0 0 0
$definebone "Bip01 R Finger22" "Bip01 R Finger21" 1.324316 0.000002 0 0.000002 0.600008 0 0 0 0 0 0 0
$definebone "Bip01 R Finger3" "Bip01 R Hand" 3.488224 -0.029855 -0.656452 6.998909 0.608662 0.161288 0 0 0 0 0 0
$definebone "Bip01 R Finger31" "Bip01 R Finger3" 1.222447 -0.000001 0 0 0.600008 0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger32" "Bip01 R Finger31" 1.135127 -0.000001 0 0 0.600009 0.000001 0 0 0 0 0 0
$definebone "Bip01 R Finger4" "Bip01 R Hand" 3.419603 0.008342 -1.544951 20.498306 0.657649 0.273015 0 0 0 0 0 0
$definebone "Bip01 R Finger41" "Bip01 R Finger4" 1.018705 -0.000002 0 -0.000004 0.600009 0.000003 0 0 0 0 0 0
$definebone "Bip01 R Finger42" "Bip01 R Finger41" 0.945942 0.000004 0 -0.000003 0.600009 0.000003 0 0 0 0 0 0
$definebone "Bip01 L Thigh" "Bip01 Spine" -3.994538 0.033822 3.473618 -0.79925 -177.47498 179.961442 0 0 0 0 0 0
$definebone "Bip01 L Calf" "Bip01 L Thigh" 19.479507 0 0 0 -1.959171 0 0 0 0 0 0 0
$definebone "Bip01 L Foot" "Bip01 L Calf" 16.25005 0 0 -0.800193 4.929557 -11.403064 0 0 0 0 0 0
$definebone "Bip01 L Toe0" "Bip01 L Foot" 3.618353 5.737839 0 -0.000002 89.999982 0 0 0 0 0 0 0
$definebone "Bip01 R Thigh" "Bip01 Spine" -3.994541 0.033841 -3.473618 0.79925 -177.475034 -179.96177 0 0 0 0 0 0
$definebone "Bip01 R Calf" "Bip01 R Thigh" 19.479506 0 0 0 -1.959171 0 0 0 0 0 0 0
$definebone "Bip01 R Foot" "Bip01 R Calf" 16.250048 0 0 0.800193 4.929557 10.603099 0 0 0 0 0 0
$definebone "Bip01 R Toe0" "Bip01 R Foot" 3.618352 5.737838 0 0.000001 89.999982 0 0 0 0 0 0 0
*/
$sequence Idle01 Idle01.smd ACT_IDLE 1 loop
