
$modelname "barney.mdl"

$model "barney" "2001barney_reference.smd" {

	eyeball "eye_right" "Bip01 Head" -1.282400 -3.839601 67.033107 "eyeball_r" 1 4 "grn_pupil_r" 0.63
	eyeball "eye_left" "Bip01 Head" 1.206900 -3.839601 67.011012 "eyeball_l" 1 -4 "grn_pupil_l" 0.63

//	eyelid upper_right "barney_reference.vta" lowerer 1 -0.24 neutral 0 0.19 raiser 2 0.26 split 1 eyeball "eye_right"
//	eyelid lower_right "barney_reference.vta" lowerer 3 -0.3 neutral 0 -0.26 raiser 4 -0.11 split 1 eyeball "eye_right"
//	eyelid upper_left "barney_reference.vta" lowerer 48 -0.24 neutral 0 0.19 raiser 49 0.26 split -1 eyeball "eye_left"
//	eyelid lower_left "barney_reference.vta" lowerer 50 -0.3 neutral 0 -0.26 raiser 51 -0.11 split -1 eyeball "eye_left"

	mouth 0 "mouth" "Bip01 Head" 0 1 0
	flexfile "barney_reference.vta" 
	{
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

	localvar upper_right_lowerer
	localvar upper_right_neutral
	localvar upper_right_raiser
	localvar lower_right_lowerer
	localvar lower_right_neutral
	localvar lower_right_raiser
	localvar upper_left_lowerer
	localvar upper_left_neutral
	localvar upper_left_raiser
	localvar lower_left_lowerer
	localvar lower_left_neutral
	localvar lower_left_raiser
	localvar mouth
	localvar AU1R
	localvar AU1L
	localvar AU2R
	localvar AU2L
	localvar AU4R
	localvar AU4L
	localvar AU6R
	localvar AU6L
	localvar AU9R
	localvar AU9L
	localvar AU38
	localvar AU10R
	localvar AU10L
	localvar AU12R
	localvar AU12L
	localvar AU15
	localvar AU17R
	localvar AU17L
	localvar AU25R
	localvar AU25L
	localvar AU18R
	localvar AU18L
	localvar AU22R
	localvar AU22L
	localvar AU20R
	localvar AU20L
	localvar AU32
	localvar AU24
	localvar AU31
	localvar AU26R
	localvar AU26L
	localvar AU27R
	localvar AU27L
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

$eyeposition 0 0 67

$cdmaterials "models\police\"

$ikchain "leftankle" "Bip01 L Foot"
$ikchain "rightankle" "Bip01 R Foot"

$include cop_shared.qci
$include cop_ragdoll.qci