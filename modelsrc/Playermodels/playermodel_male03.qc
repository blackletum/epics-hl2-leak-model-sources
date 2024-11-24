//Male03 Playermodel experiment for Leaknet multiplayer

$modelname "Player/Male_03.mdl"

$model "male_03" "male_03_reference.smd" {

	eyeball "eye_right" "ValveBiped.Bip01_Head1" -1.164600 -3.860101 67.661311 "dark_eyeball_r" 1 4 "pupil_r" 0.68
	eyeball "eye_left" "ValveBiped.Bip01_Head1" 1.444300 -3.860101 67.667712 "dark_eyeball_l" 1 -4 "pupil_l" 0.68

	eyelid upper_right "male_03_01.vta" lowerer 52 -0.19 neutral 0 0.15 raiser 53 0.23 split 1 eyeball "eye_right"
	eyelid lower_right "male_03_01.vta" lowerer 54 -0.28 neutral 0 -0.2 raiser 55 -0.05 split 1 eyeball "eye_right"
	eyelid upper_left "male_03_01.vta" lowerer 1 -0.19 neutral 0 0.15 raiser 2 0.23 split -1 eyeball "eye_left"
	eyelid lower_left "male_03_01.vta" lowerer 3 -0.28 neutral 0 -0.2 raiser 4 -0.05 split -1 eyeball "eye_left"

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0

	flexfile "male_03_01.vta" 
	{
		defaultflex frame 0
		// Already in eyelid lines: flex "upper_left" frame 1
		// Already in eyelid lines: flex "upper_left" frame 2
		// Already in eyelid lines: flex "lower_left" frame 3
		// Already in eyelid lines: flex "lower_left" frame 4
		flex "AU1R" frame 5
		flex "AU1L" frame 6
		flex "AU2R" frame 7
		flex "AU2L" frame 8
		flex "AU4R" frame 9
		flex "AU4L" frame 10
		flex "AU1AU2R" frame 11
		flex "AU1AU2L" frame 12
		flex "AU12R" frame 13
		flex "AU12R" frame 14
		flex "AU12L" frame 15
		flex "AU12L" frame 16
		flex "AU12AU25" frame 17
		flex "AU15" frame 18
		flex "AU17R" frame 19
		flex "AU17L" frame 20
		flex "AU10R" frame 21
		flex "AU10L" frame 22
		flex "AU10SL" frame 23
		flex "AU10SR" frame 24
		flex "AU16" frame 25
		flex "AU6R" frame 26
		flex "AU6L" frame 27
		flex "AU9R" frame 28
		flex "AU9L" frame 29
		flex "AU25R" frame 30
		flex "AU25L" frame 31
		flex "AU18R" frame 32
		flex "AU18R" frame 33
		flex "AU18L" frame 34
		flex "AU18L" frame 35
		flex "AU22R" frame 36
		flex "AU22L" frame 37
		flex "AU20R" frame 38
		flex "AU20L" frame 39
		flex "AU32" frame 40
		flex "AU24" frame 41
		flex "AU38" frame 42
		flex "AU31" frame 43
		flex "AU26R" frame 44
		flex "AU26L" frame 45
		flex "AU27R" frame 46
		flex "AU27L" frame 47
		flex "AU26ZR" frame 48
		flex "AU26ZL" frame 49
		flex "AU27ZR" frame 50
		flex "AU27ZL" frame 51
		// Already in eyelid lines: flex "upper_right" frame 52
		// Already in eyelid lines: flex "upper_right" frame 53
		// Already in eyelid lines: flex "lower_right" frame 54
		// Already in eyelid lines: flex "lower_right" frame 55
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
$proceduralbones "male_03.vrd"

$eyeposition 0 0 70

$opaque

$cdmaterials models\Humans\Male models\citizen\city models\citizen

$attachment "eyes" "ValveBiped.Bip01_Head1" 3.8 -4.05 -0.14 rotate 0 -80.1 -90
$attachment "forward" "ValveBiped.Bip01_Head1" 0 0 0 rotate 0 -80 -90

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

$include "../Humans/standardhierarchy_leak.qci"
$include "../Humans/standardikchains_leak.qci"

//Evil ass temp solution until I remake 2003 citizen anims qc myself - epicplayer
$pushd "../Gman_XSI"
$include "../Humans/Male_animations/playermodel_shared_TEMP.qci"
$popd

$pushd "../gasmasksamuel"
$include "../Humans/Male_animations/playermodel_weapons_shared_TEMP.qci"
$popd

$pushd "../Humans/Male"
$include "../Humans/Male/ragdoll.qci"
$include "../Humans/Male/hitbox.qci"
$popd