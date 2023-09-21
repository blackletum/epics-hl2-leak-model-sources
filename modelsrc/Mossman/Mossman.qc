// 2003 Leak Mossman Model

$modelname "mossman.mdl"

$model "mossman" "mossman_reference.smd" {

	eyeball "eye_right" "ValveBiped.Bip01_Head1" -1.334100 -3.321600 65.315306 "eyeball_r" 1 4 "pupil_r" 0.63
	eyeball "eye_left" "ValveBiped.Bip01_Head1" 1.162600 -3.321600 65.325109 "eyeball_l" 1 -4 "pupil_l" 0.63

	eyelid upper_right "Mossman_01.vta" lowerer 39 -0.22 neutral 0 0.17 raiser 40 0.29 split 1 eyeball "eye_right"
	eyelid lower_right "Mossman_01.vta" lowerer 41 -0.34 neutral 0 -0.23 raiser 42 -0.06 split 1 eyeball "eye_right"
	eyelid upper_left "Mossman_01.vta" lowerer 43 -0.22 neutral 0 0.17 raiser 44 0.29 split -1 eyeball "eye_left"
	eyelid lower_left "Mossman_01.vta" lowerer 45 -0.34 neutral 0 -0.23 raiser 46 -0.06 split -1 eyeball "eye_left"

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0

	flexfile "Mossman_01.vta" 
	{
		defaultflex frame 0
		flex "AU26R" frame 1
		flex "AU26L" frame 2
		flex "AU27R" frame 3
		flex "AU27L" frame 4
		flex "AU26ZR" frame 5
		flex "AU26ZL" frame 6
		flex "AU27ZR" frame 7
		flex "AU27ZL" frame 8
		flex "AU2L" frame 9
		flex "AU4L" frame 10
		flex "AU12R" frame 11
		flex "AU12R" frame 12
		flex "AU12L" frame 13
		flex "AU12L" frame 14
		flex "AU12AU25" frame 15
		flex "AU15" frame 16
		flex "AU17R" frame 17
		flex "AU17L" frame 18
		flex "AU10R" frame 19
		flex "AU10L" frame 20
		flex "AU10SL" frame 21
		flex "AU10SR" frame 22
		flex "AU16" frame 23
		flex "AU9R" frame 24
		flex "AU9L" frame 25
		flex "AU25R" frame 26
		flex "AU25L" frame 27
		flex "AU18R" frame 28
		flex "AU18R" frame 29
		flex "AU18L" frame 30
		flex "AU18L" frame 31
		flex "AU22R" frame 32
		flex "AU22L" frame 33
		flex "AU20R" frame 34
		flex "AU20L" frame 35
		flex "AU32" frame 36
		flex "AU24" frame 37
		flex "AU31" frame 38
		// Already in eyelid lines: flex "upper_right" frame 39
		// Already in eyelid lines: flex "upper_right" frame 40
		// Already in eyelid lines: flex "lower_right" frame 41
		// Already in eyelid lines: flex "lower_right" frame 42
		// Already in eyelid lines: flex "upper_left" frame 43
		// Already in eyelid lines: flex "upper_left" frame 44
		// Already in eyelid lines: flex "lower_left" frame 45
		// Already in eyelid lines: flex "lower_left" frame 46
		flex "AU1R" frame 47
		flex "AU1L" frame 48
		flex "AU2R" frame 49
		flex "AU4R" frame 50
		flex "AU1AU2R" frame 51
		flex "AU1AU2L" frame 52
		flex "AU6R" frame 53
		flex "AU6L" frame 54
		flex "AU38" frame 55
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
	flexcontroller mouth range 0 1 "smile"
	flexcontroller mouth range 0 1 "right_sneer"
	flexcontroller mouth range 0 1 "left_sneer"
	flexcontroller mouth range 0 1 "wide_open"
	flexcontroller mouth range 0 1 "lower_lip"
	flexcontroller head range -55 55 "head_rightleft"
	flexcontroller head range -30 35 "head_updown"
	flexcontroller head range -18 18 "head_tilt"
	flexcontroller eyes range -30 30 "eyes_updown"
	flexcontroller eyes range -30 30 "eyes_rightleft"
	flexcontroller body range -6 6 "move_rightleft"
	flexcontroller body range -10 6 "move_forwardback"
	flexcontroller body range -10 2 "move_updown"
	flexcontroller body range -50 50 "body_rightleft"
	flexcontroller body range -20 40 "body_updown"
	flexcontroller body range -15 15 "body_tilt"
	flexcontroller chest range -40 40 "chest_rightleft"
	flexcontroller chest range -25 50 "chest_updown"
	flexcontroller chest range -20 20 "chest_tilt"
	flexcontroller head range -1 1 "head_forwardback"

	localvar right_open
	localvar left_open
	localvar right_lip_suppressor
	localvar left_lip_suppressor
	localvar right_corner_suppressor
	localvar left_corner_suppressor
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
	%AU1R = right_inner_raiser * (1 - right_outer_raiser) * (1 - right_lowerer)
	%AU1L = left_inner_raiser * (1 - left_outer_raiser) * (1 - left_lowerer)
	%AU2R = right_outer_raiser * (1 - right_inner_raiser) * (1 - right_lowerer)
	%AU2L = left_outer_raiser * (1 - left_inner_raiser) * (1 - left_lowerer)
	%AU1AU2R = right_inner_raiser * right_outer_raiser * (1 - left_lowerer)
	%AU1AU2L = right_inner_raiser * right_outer_raiser * (1 - left_lowerer)
	%AU4R = right_lowerer
	%AU4L = left_lowerer
	%AU6R = right_cheek_raiser
	%AU6L = left_cheek_raiser
	%AU9R = wrinkler
	%AU9L = wrinkler
	%AU38 = dilator
	%AU10R = right_upper_raiser
	%AU10L = left_upper_raiser
	%right_open = smile + right_part * (1 - smile) + right_puckerer + right_funneler
	%left_open = smile + left_part * (1 - smile) + left_puckerer + left_funneler
	%right_lip_suppressor = 1 / %right_open * (1 - presser) * (1 - bite)
	%left_lip_suppressor = 1 / %left_open * (1 - presser) * (1 - bite)
	%AU25R = right_part * right_part * %right_lip_suppressor * (1 - smile)
	%AU25L = left_part * left_part * %left_lip_suppressor * (1 - smile)
	%AU12AU25 = smile * smile * 0.5 * (%right_lip_suppressor + %left_lip_suppressor)
	%AU18R = right_puckerer * right_puckerer * %right_lip_suppressor
	%AU18L = left_puckerer * left_puckerer * %left_lip_suppressor
	%AU22R = right_funneler * right_funneler * %right_lip_suppressor
	%AU22L = left_funneler * left_funneler * %left_lip_suppressor
	%AU17R = chin_raiser * (1 - jaw_drop * 0.5) * (1 - bite) * (1 - 0.6 * (%AU25R + %AU18R + %AU22R))
	%AU17L = chin_raiser * (1 - jaw_drop * 0.5) * (1 - bite) * (1 - 0.6 * (%AU25L + %AU18L + %AU22L))
	%AU15 = corner_depressor
	%right_corner_suppressor = 1 / (%AU18R * 0.8 + %AU22R * 0.8 + %AU17R + bite + right_corner_puller + right_stretcher) * (1 - jaw_drop * 0.5) * (1 - smile)
	%left_corner_suppressor = 1 / (%AU18L * 0.8 + %AU22L * 0.8 + %AU17L + bite + left_corner_puller + left_stretcher) * (1 - jaw_drop * 0.5) * (1 - smile)
	%AU12R = right_corner_puller * right_corner_puller * %right_corner_suppressor
	%AU12L = left_corner_puller * left_corner_puller * %left_corner_suppressor
	%AU20R = right_stretcher * right_stretcher * %right_corner_suppressor
	%AU20L = left_stretcher * left_stretcher * %left_corner_suppressor
	%AU32 = bite
	%AU24 = presser + (1 - presser) * tightener
	%AU31 = jaw_clencher * jaw_clencher / (jaw_clencher + jaw_drop)
	%AU26R = jaw_drop * (1 - right_mouth_drop * (1 - bite)) * jaw_drop / (jaw_clencher + jaw_drop)
	%AU26L = jaw_drop * (1 - left_mouth_drop * (1 - bite)) * jaw_drop / (jaw_clencher + jaw_drop)
	%AU27R = jaw_drop * right_mouth_drop * (1 - bite) * jaw_drop / (jaw_clencher + jaw_drop)
	%AU27L = jaw_drop * left_mouth_drop * (1 - bite) * jaw_drop / (jaw_clencher + jaw_drop)
	%AU10SR = right_sneer
	%AU10SL = left_sneer
	%AU27ZR = wide_open
	%AU27ZL = wide_open
	%AU16 = lower_lip
	%mouth = %AU27R * 0.5 + %AU27L * 0.5 + %AU22R * 0.35 + %AU22L * 0.35 + %AU18R * 0.25 + %AU18L * 0.25 + %AU25R * 0.35 + %AU25L * 0.35 + %AU32 * 0.5 + %AU12AU25 * 0.8 + %AU10SR * 0.35 + %AU10SL * 0.35 + (%AU27ZR + %AU27ZL) * (0.5 * 0.7 + %AU16 * 0.4)
}


$surfaceprop "flesh"

$eyeposition 0 0 65

$cdmaterials models\mossman

$attachment "eyes" "ValveBiped.Bip01_Head1" 2.9 -3.7 0.09 rotate 0 -80.1 -90

$include "Mossman_shared.qci"

$collisionjoints "Mossman_physics.smd"
{
	$mass 60
	$inertia 5
	$damping 0.01
	$rotdamping 1.5
	$rootbone "valvebiped.bip01_pelvis"

	$jointdamping "ValveBiped.Bip01" -1
	$jointinertia "ValveBiped.Bip01" 0
	$jointrotdamping "ValveBiped.Bip01" 0

	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -48 48 1
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -26 26 1
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -39 68 1

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -64 64 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -26 122 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -122 50 1

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -64 64 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -122 28 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -100 59 1

	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -140 0 1

	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -68 68 1
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit -37 41 1
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -44 70 1

	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -149 1 1

	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -75 93 1
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit -37 32 1
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -48 66 1

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -50 48 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -19 70 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -79 73 1

	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit 0 133 1

	$jointconstrain "ValveBiped.Bip01_Head1" x limit -61 61 1
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -44 44 1
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -32 50 1

	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -39 39 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -59 23 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -84 66 1

	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit 0 131 1

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -23 23 1
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -28 28 1
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -46 46 1

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit -23 23 1
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -23 23 1
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -35 57 1
}
