//Interpretation of Gasmask Citizen Samuel
//Model by Epicplayer, original fixed leak citizen sources by ????

$modelname "samuel.mdl"

$model samuel "samuel.smd"{
	eyeball righteye "ValveBiped.Bip01_Head1" -1.1977 -3.9142 67.7773 "eyeball_r" 1 4 "pupil_r" 0.63
	eyeball lefteye "ValveBiped.Bip01_Head1" 1.1019 -3.9439 67.7795 "eyeball_l" 1 -4 "pupil_l" 0.63

//	eyelid  upper_right "k" lowerer 1 -65.7773 neutral 0 -45.7773 raiser 2 -65.7773 split 0.1 eyeball righteye
//	eyelid  lower_right "k" lowerer 3 -65.7773 neutral 0 -45.7773 raiser 4 -65.7773 split 0.1 eyeball righteye
//	eyelid  upper_left "k" lowerer 1 -65.7773 neutral 0 -45.7773 raiser 2 -65.7773 split -0.1 eyeball lefteye
//	eyelid  lower_left "k" lowerer 3 -65.7773 neutral 0 -45.7773 raiser 4 -65.7773 split -0.1 eyeball lefteye

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0     // mouth illumination

//	flexfile "k" {
//		$include "../Humans/standardflex_xsi.qci"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition -0.045 -1.261 36.061

$eyeposition 0 0 70

$mostlyopaque

$cdmaterials "models\citizen_17\\"

//$attachment "eyes" "ValveBiped.Bip01_Head1" 4.03 -3.33 -0.01 rotate 0 -80.1 -90
$attachment "eyes" "ValveBiped.Bip01_Head1" -0.0479 -3.929 67.7784 absolute

$cbox 0 0 0 0 0 0

$bbox -13 -13 0 13 13 72

//$includemodel humans/male_0101.mdl

$poseparameter "move_yaw" -180 180 loop 360
$poseparameter "body_trans_Y" -6.052701 5.986563 loop 0
$poseparameter "body_trans_X" -10.07139 5.168008 loop 0
$poseparameter "body_lift" -10.27 2.091328 loop 0
$poseparameter "body_yaw" -56.92804 56.18248 loop 0
$poseparameter "body_pitch" -20.50617 43.03254 loop 0
$poseparameter "body_roll" -17.89883 15.76654 loop 0
$poseparameter "spine_yaw" -40.63224 40.61805 loop 0
$poseparameter "spine_pitch" -28.05413 52.54873 loop 0
$poseparameter "spine_roll" -21.838 21.83869 loop 0
$poseparameter "neck_trans" -0.433189 0.63061 loop 0
$poseparameter "head_yaw" -59.74303 59.74279 loop 0
$poseparameter "head_pitch" -29.99269 36.14032 loop 0
$poseparameter "head_roll" -18.29328 18.32058 loop 0
$poseparameter "aim_pitch" -90 90 loop 360
$poseparameter "aim_yaw" -90 90 loop 360

$ikchain "rhand" "ValveBiped.Bip01_R_Hand"
$ikchain "lhand" "ValveBiped.Bip01_L_Hand"
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot"
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot"

$ikautoplaylock "rhand" 0.5 0.8
$ikautoplaylock "lhand" 0.5 0.8
$ikautoplaylock "rfoot" 1 0.1
$ikautoplaylock "lfoot" 1 0.1

$weightlist upperbodyreplace "Valvebiped.bip01_spine" 1.0 

$animation "a_idle_angry" "male_anims\idle_angry.smd" {
	fps 30
	loop
}

$animation "a_idle_subtle" "male_anims\idle_subtle.smd" {
	fps 30
	loop
}

$animation "a_idle01" "male_anims\idle01.smd" {
	fps 30
	loop
}

$animation "a_Idle02" "male_anims\Idle02.smd" {
	fps 30
	loop
}

$animation "a_Idle03" "male_anims\Idle03.smd" {
	fps 30
	loop
}

$animation "a_LineIdle01" "male_anims\LineIdle01.smd" {
	fps 30
	loop
}

$animation "a_LineIdle02" "male_anims\LineIdle02.smd" {
	fps 30
	loop
}

$animation "a_LineIdle03" "male_anims\LineIdle03.smd" {
	fps 30
	loop
}

$animation "a_LineIdle04" "male_anims\LineIdle04.smd" {
	fps 30
	loop
}

$animation "a_Crouch_idleD" "male_anims\Crouch_idleD.smd" {
	fps 30
	loop
}

$animation "a_WalkS" "male_anims\a_WalkS.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_WalkSE" "male_anims\a_WalkSE.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_WalkE" "male_anims\a_WalkE.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_WalkNE" "male_anims\a_WalkNE.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_WalkN" "male_anims\a_WalkN.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_WalkNW" "male_anims\a_WalkNW.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_WalkW" "male_anims\a_WalkW.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_WalkSW" "male_anims\a_WalkSW.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_RunS" "male_anims\a_RunS.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_RunSE" "male_anims\a_RunSE.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_RunE" "male_anims\a_RunE.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_RunNE" "male_anims\a_RunNE.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_RunN" "male_anims\a_RunN.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_RunNW" "male_anims\a_RunNW.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_RunW" "male_anims\a_RunW.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_RunSW" "male_anims\a_RunSW.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_Crouch_runN_smg1" "male_anims\a_Crouch_runN_smg1.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_layer_crouch_run_holding" "male_anims\layer_crouch_run_holding.smd" {
	fps 30
}

$animation "a_layer_crouch_walk_no_weapon" "male_anims\layer_crouch_walk_no_weapon.smd" {
	fps 30
}

$animation "a_layer_crouch_walk_holding" "male_anims\layer_crouch_walk_holding.smd" {
	fps 30
}

$animation "a_layer_crouch_run_no_weapon" "male_anims\layer_crouch_run_no_weapon.smd" {
	fps 30
}

$animation "a_layer_run_holding" "male_anims\layer_run_holding.smd" {
	fps 30
}

$animation "a_RunN_SMG" "male_anims\a_RunN_SMG.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_Crouch_walkS" "male_anims\a_Crouch_walkS.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_Crouch_walkSE" "male_anims\a_Crouch_walkSE.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_Crouch_walkE" "male_anims\a_Crouch_walkE.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_Crouch_walkNE" "male_anims\a_Crouch_walkNE.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_Crouch_walkN" "male_anims\a_Crouch_walkN.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_Crouch_walkNW" "male_anims\a_Crouch_walkNW.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_Crouch_walkW" "male_anims\a_Crouch_walkW.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_Crouch_walkSW" "male_anims\a_Crouch_walkSW.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_Crouch_runN" "male_anims\a_Crouch_runN.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_crouch_runS_delta" "male_anims\a_crouch_runS_delta.smd" {
	fps 30
	  
	
}

$animation "a_crouch_runSE_delta" "male_anims\a_crouch_runSE_delta.smd" {
	fps 30
	  
	
}

$animation "a_crouch_runE_delta" "male_anims\a_crouch_runE_delta.smd" {
	fps 30
	  
	
}

$animation "a_crouch_runNE_delta" "male_anims\a_crouch_runNE_delta.smd" {
	fps 30
	  
	
}

$animation "a_crouch_runN_delta" "male_anims\a_crouch_runN_delta.smd" {
	fps 30
	  
	
}

$animation "a_crouch_runNW_delta" "male_anims\a_crouch_runNW_delta.smd" {
	fps 30
	  
	
}

$animation "a_crouch_runW_delta" "male_anims\a_crouch_runW_delta.smd" {
	fps 30
	  
	
}

$animation "a_crouch_runSW_delta" "male_anims\a_crouch_runSW_delta.smd" {
	fps 30
	  
	
}

$animation "a_Stand_to_run" "male_anims\Stand_to_run.smd" {
	fps 30
	walkframe 30 LX
}

$animation "a_Run_to_stand" "male_anims\Run_to_stand.smd" {
	fps 30
}

$animation "a_Stand_to_walk" "male_anims\Stand_to_walk.smd" {
	fps 30
	walkframe 32 LX
}

$animation "a_Walk_to_stand" "male_anims\Walk_to_stand.smd" {
	fps 30
}

$animation "a_Stand_to_crouch" "male_anims\Stand_to_crouch.smd" {
	fps 30 LX LY
}

$animation "a_Crouch_to_stand" "male_anims\Crouch_to_stand.smd" {
	fps 30
}

$animation "a_Crouch_to_run" "male_anims\Crouch_to_run.smd" {
	fps 30
	walkframe 24 LX LY
}

$animation "a_Run_to_crouch" "male_anims\Run_to_crouch.smd" {
	fps 30
	walkframe 36 LX
}

$animation "a_stairs_up" "male_anims\stairs_up.smd" {
	fps 30
	walkframe 40 LX LZ
}

$animation "a_stairs_down" "male_anims\stairs_down.smd" {
	fps 30
	walkframe 40 LX LZ
}

$animation "a_ladder_up" "male_anims\ladder_up.smd" {
	fps 30
	walkframe 42 LZ
}

$animation "a_ladder_down" "male_anims\ladder_down.smd" {
	fps 30
	walkframe 42 LZ
}

$animation "a_Open_door_away" "male_anims\Open_door_away.smd" {
	fps 30
}

$animation "a_Open_door_towards_right" "male_anims\Open_door_towards_right.smd" {
	fps 30
}

$animation "a_Open_door_towards_left" "male_anims\Open_door_towards_left.smd" {
	fps 30
}

$animation "a_Startle_behind" "male_anims\Startle_behind.smd" {
	fps 30
}

$animation "a_Cover_R" "male_anims\Cover_R.smd" {
	fps 30
	loop
}

$animation "a_Cover_L" "male_anims\Cover_L.smd" {
	fps 30
	loop
}

$animation "a_CoverLow_R" "male_anims\CoverLow_R.smd" {
	fps 30
	loop
}

$animation "a_CoverLow_L" "male_anims\CoverLow_L.smd" {
	fps 30
	loop
}

$animation "a_ThrowItem" "male_anims\ThrowItem.smd" {
	fps 30
}

$animation "a_Heal" "male_anims\Heal.smd" {
	fps 30
}

$animation "a_Wave" "male_anims\Wave.smd" {
	fps 30
}

$animation "a_DuckUnder" "male_anims\DuckUnder.smd" {
	fps 30
	walkframe 62 LX
}

$animation "a_crouchidlehide" "male_anims\crouchidlehide.smd" {
	fps 30
	loop
}

$animation "a_standtocrouchhide" "male_anims\standtocrouchhide.smd" {
	fps 30
}

$animation "a_crouchhidetostand" "male_anims\crouchhidetostand.smd" {
	fps 30
}

$animation "a_scaredidle" "male_anims\scaredidle.smd" {
	fps 30
	loop
}

$animation "a_preSkewer" "male_anims\preSkewer.smd" {
	fps 30
}

$animation "a_Fear_Reaction" "male_anims\Fear_Reaction.smd" {
	fps 30
}

$animation "a_RunN_protected" "male_anims\a_RunN_protected.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_layer_run_protected" "male_anims\layer_run_protected.smd" {
	fps 30
}

$animation "a_pose_neutral" "male_anims\a_pose_neutral.smd" {
	fps 30
}

$animation "a_body_trans" "male_anims\a_body_trans.smd" {
	fps 30
	noanimation
	  
	
}

$animation "a_body_trans_rt" "male_anims\a_body_trans_rt.smd" {
	fps 30
	  
	
}

$animation "a_body_trans_lt" "male_anims\a_body_trans_lt.smd" {
	fps 30
	  
	
}

$animation "a_body_trans_fwd" "male_anims\a_body_trans_fwd.smd" {
	fps 30
	  
	
}

$animation "a_body_trans_bwd" "male_anims\a_body_trans_bwd.smd" {
	fps 30
	  
	
}

$animation "a_body_trans_dwn" "male_anims\a_body_trans_dwn.smd" {
	fps 30
	  
	
}

$animation "a_body_trans_up" "male_anims\a_body_trans_up.smd" {
	fps 30
	  
	
}

$animation "a_body_rot" "male_anims\a_body_rot.smd" {
	fps 30
	noanimation
	  
	
}

$animation "a_body_rot_back" "male_anims\a_body_rot_back.smd" {
	fps 30
	  
	
}

$animation "a_body_rot_fwd" "male_anims\a_body_rot_fwd.smd" {
	fps 30
	  
	
}

$animation "a_body_rot_rt" "male_anims\a_body_rot_rt.smd" {
	fps 30
	  
	
}

$animation "a_body_rot_lt" "male_anims\a_body_rot_lt.smd" {
	fps 30
	  
	
}

$animation "a_body_rot_z_rt" "male_anims\a_body_rot_z_rt.smd" {
	fps 30
	  
	
}

$animation "a_body_rot_z_lt" "male_anims\a_body_rot_z_lt.smd" {
	fps 30
	  
	
}

$animation "a_spine_rot" "male_anims\a_spine_rot.smd" {
	fps 30
	noanimation
	  
	
}

$animation "a_spine_rot_fwd" "male_anims\a_spine_rot_fwd.smd" {
	fps 30
	  
	
}

$animation "a_spine_rot_back" "male_anims\a_spine_rot_back.smd" {
	fps 30
	  
	
}

$animation "a_spine_rot_lt" "male_anims\a_spine_rot_lt.smd" {
	fps 30
	  
	
}

$animation "a_spine_rot_rt" "male_anims\a_spine_rot_rt.smd" {
	fps 30
	  
	
}

$animation "a_spine_rot_z_rt" "male_anims\a_spine_rot_z_rt.smd" {
	fps 30
	  
	
}

$animation "a_spine_rot_z_lt" "male_anims\a_spine_rot_z_lt.smd" {
	fps 30
	  
	
}

$animation "a_head_rot" "male_anims\a_head_rot.smd" {
	fps 30
	noanimation
	  
	
}

$animation "a_head_rot_lt" "male_anims\a_head_rot_lt.smd" {
	fps 30
	  
	
}

$animation "a_head_rot_rt" "male_anims\a_head_rot_rt.smd" {
	fps 30
	  
	
}

$animation "a_neck_trans" "male_anims\a_neck_trans.smd" {
	fps 30
	noanimation
	  
	
}

$animation "a_neck_trans_fwd" "male_anims\a_neck_trans_fwd.smd" {
	fps 30
	  
	
}

$animation "a_neck_trans_back" "male_anims\a_neck_trans_back.smd" {
	fps 30
	  
	
}

$animation "a_head_rot_dwn" "male_anims\a_head_rot_dwn.smd" {
	fps 30
	  
	
}

$animation "a_head_rot_up" "male_anims\a_head_rot_up.smd" {
	fps 30
	  
	
}

$animation "a_shoulder_shrug" "male_anims\a_shoulder_shrug.smd" {
	fps 30
	  
	
}

$animation "a_head_rot_z_rt" "male_anims\a_head_rot_z_rt.smd" {
	fps 30
	  
	
}

$animation "a_head_rot_z_lt" "male_anims\a_head_rot_z_lt.smd" {
	fps 30
	  
	
}

$animation "a_Idle_Angry_SMG1" "male_anims\Idle_Angry_SMG1.smd" {
	fps 30
	loop
}

$animation "a_Idle_SMG1_Aim" "male_anims\Idle_SMG1_Aim.smd" {
	fps 30
	loop
}

$animation "a_shoot_ar1" "male_anims\shoot_ar1.smd" {
	fps 25
}

$animation "a_shoot_hmg1" "male_anims\shoot_hmg1.smd" {
	fps 25
}

$animation "a_shoot_smg1" "male_anims\shoot_smg1.smd" {
	fps 25
}

$animation "a_shoot_smg2" "male_anims\shoot_smg2.smd" {
	fps 25
}

$animation "a_shoot_shotgun" "male_anims\shoot_shotgun.smd" {
	fps 25
}

$animation "a_shoot_rpg" "male_anims\shoot_rpg.smd" {
	fps 5
}

$animation "a_reload_smg1" "male_anims\reload_smg1.smd" {
	fps 30
}

$animation "a_gesture_shoot_ar1" "male_anims\gesture_shoot_ar1.smd" {
	fps 25
	  
	
}

$animation "a_gesture_shoot_hmg1" "male_anims\gesture_shoot_hmg1.smd" {
	fps 25
	  
	
}

$animation "a_gesture_shoot_smg1" "male_anims\gesture_shoot_smg1.smd" {
	fps 25
	  
	
}

$animation "a_gesture_shoot_smg2" "male_anims\gesture_shoot_smg2.smd" {
	fps 25
	  
	
}

$animation "a_gesture_shoot_shotgun" "male_anims\gesture_shoot_shotgun.smd" {
	fps 25
	  
	
}

$animation "a_CrouchDToShoot" "male_anims\CrouchDToShoot.smd" {
	fps 30
}

$animation "a_ShootToCrouchD" "male_anims\ShootToCrouchD.smd" {
	fps 30
}

$animation "a_Cover_LToShootSMG1" "male_anims\Cover_LToShootSMG1.smd" {
	fps 30
}

$animation "a_Cover_RToShootSMG1" "male_anims\Cover_RToShootSMG1.smd" {
	fps 30
}

$animation "a_CoverLow_LToShootSMG1" "male_anims\CoverLow_LToShootSMG1.smd" {
	fps 30
}

$animation "a_CoverLow_RToShootSMG1" "male_anims\CoverLow_RToShootSMG1.smd" {
	fps 30
}

$animation "a_ShootSMG1ToCover_L" "male_anims\ShootSMG1ToCover_L.smd" {
	fps 30
}

$animation "a_ShootSMG1ToCover_R" "male_anims\ShootSMG1ToCover_R.smd" {
	fps 30
}

$animation "a_ShootSMG1ToCoverLow_L" "male_anims\ShootSMG1ToCoverLow_L.smd" {
	fps 30
}

$animation "a_ShootSMG1ToCoverLow_R" "male_anims\ShootSMG1ToCoverLow_R.smd" {
	fps 30
}

$animation "a_crouch_shoot_smg1" "male_anims\crouch_shoot_smg1.smd" {
	fps 25
}

$animation "a_crouch_aim_smg1" "male_anims\crouch_aim_smg1.smd" {
	fps 30
	loop
}

$animation "a_crouch_reload_smg1" "male_anims\crouch_reload_smg1.smd" {
	fps 30
}

$animation "a_shootp1" "male_anims\shootp1.smd" {
	fps 4
}

$animation "a_reloadpistol" "male_anims\reloadpistol.smd" {
	fps 30
}

$animation "a_drawpistol" "male_anims\drawpistol.smd" {
	fps 30
}

$animation "a_overwatch" "male_anims\overwatch.smd" {
	fps 30
}

$animation "a_gesture_shootp1" "male_anims\gesture_shootp1.smd" {
	fps 4
	  
	
}

$animation "a_reload_pistol" "male_anims\reload_pistol.smd" {
	fps 30
}

$animation "a_crouch_shoot_pistol" "male_anims\crouch_shoot_pistol.smd" {
	fps 18
}

$animation "a_crouch_reload_pistol" "male_anims\crouch_reload_pistol.smd" {
	fps 30
}

$animation "a_throw1" "male_anims\throw1.smd" {
	fps 30
}

$animation "a_swing" "male_anims\swing.smd" {
	fps 35
}

$animation "a_MeleeAttack01" "male_anims\MeleeAttack01.smd" {
	fps 30
}

$animation "a_pickup" "male_anims\pickup.smd" {
	fps 30
}

$animation "a_aim_neutral" "male_anims\a_aim_neutral.smd" {
	fps 30
}

$animation "a_run_aim_down_left" "male_anims\a_run_aim_down_left.smd" {
	fps 30
	  
	
}

$animation "a_run_aim_down_center" "male_anims\a_run_aim_down_center.smd" {
	fps 30
	  
	
}

$animation "a_run_aim_down_right" "male_anims\a_run_aim_down_right.smd" {
	fps 30
	  
	
}

$animation "a_run_aim_mid_left" "male_anims\a_run_aim_mid_left.smd" {
	fps 30
	  
	
}

$animation "a_run_aim_mid_center" "male_anims\a_run_aim_mid_center.smd" {
	fps 30
	  
	
}

$animation "a_run_aim_mid_right" "male_anims\a_run_aim_mid_right.smd" {
	fps 30
	  
	
}

$animation "a_run_aim_up_left" "male_anims\a_run_aim_up_left.smd" {
	fps 30
	  
	
}

$animation "a_run_aim_up_center" "male_anims\a_run_aim_up_center.smd" {
	fps 30
	  
	
}

$animation "a_run_aim_up_right" "male_anims\a_run_aim_up_right.smd" {
	fps 30
	  
	
}

$animation "a_run_aim_straight_up" "male_anims\a_run_aim_straight_up.smd" {
	fps 30
	  
	
}

$animation "a_aimup" "male_anims\aimup.smd" {
	fps 30
}

$animation "a_layer_walk_aiming" "male_anims\layer_walk_aiming.smd" {
	fps 30
}

$animation "a_layer_walk_holding" "male_anims\layer_walk_holding.smd" {
	fps 30
}

$animation "a_layer_run_aiming" "male_anims\layer_run_aiming.smd" {
	fps 30
}

$animation "a_layer_crouch_run_aiming" "male_anims\layer_crouch_run_aiming.smd" {
	fps 30
}

$animation "a_layer_crouch_walk_aiming" "male_anims\layer_crouch_walk_aiming.smd" {
	fps 30
}

$animation "a_RunN_aim" "male_anims\a_RunN_aim.smd" {
	fps 30
	loop
	walkframe 18 LX LY
}

$animation "a_WalkN_SMG" "male_anims\a_WalkN_SMG.smd" {
	fps 30
	loop
	walkframe 30 LX LY
}

$animation "a_walkS_aim_delta" "male_anims\a_walkS_aim_delta.smd" {
	fps 30
	  
	
}

$animation "a_walkSE_aim_delta" "male_anims\a_walkSE_aim_delta.smd" {
	fps 30
	  
	
}

$animation "a_walkE_aim_delta" "male_anims\a_walkE_aim_delta.smd" {
	fps 30
	  
	
}

$animation "a_walkNE_aim_delta" "male_anims\a_walkNE_aim_delta.smd" {
	fps 30
	  
	
}

$animation "a_walkN_aim_delta" "male_anims\a_walkN_aim_delta.smd" {
	fps 30
	  
	
}

$animation "a_walkNW_aim_delta" "male_anims\a_walkNW_aim_delta.smd" {
	fps 30
	  
	
}

$animation "a_walkW_aim_delta" "male_anims\a_walkW_aim_delta.smd" {
	fps 30
	  
	
}

$animation "a_walkSW_aim_delta" "male_anims\a_walkSW_aim_delta.smd" {
	fps 30
	  
	
}

$animation "a_ragdoll" "male_anims\ragdoll.smd" {
	fps 30
}

$animation "a_shotgunpose" "male_anims\shotgunpose.smd" {
	fps 30
	ikrule rhand touch "ValveBiped.Bip01_Spine" contact 0 pad 0 floor 0 range 0 0 39 39 height 0
	ikrule lhand touch "ValveBiped.Bip01_R_Hand" contact 0 pad 0 floor 0 range 0 0 39 39 height 0
}

$animation "a_balcony_idle" "citizen_anims\a_balcony_idle.smd" {
	fps 30
}

$animation "a_balcony_idlepose" "citizen_anims\a_balcony_idlepose.smd" {
	fps 30
}

$animation "a_balc2" "citizen_anims\a_balc2.smd" {
	fps 30
}

$animation "a_balc3" "citizen_anims\a_balc3.smd" {
	fps 30
}

$animation "a_pickupshotgun" "male_anims\pickupshotgun.smd" {
	fps 30
}

$animation "a_throwshotgun" "male_anims\throwshotgun.smd" {
	fps 30
}

$animation "a_gun_idle" "male_anims\gun_idle.smd" {
	fps 30
}

$animation "a_balc_rail_leanpose" "citizen_anims\a_balc_rail_leanpose.smd" {
	fps 30
}

$animation "a_shoot_gun" "male_anims\shoot_gun.smd" {
	fps 30
}


$sequence "idle_angry" {
	"a_idle_angry"
	activity "ACT_IDLE_ANGRY" 1
	fadein 0.2
	fadeout 0.2
	node 1
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "idle_subtle" {
	"a_idle_subtle"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node 1
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "idle01" {
	"a_idle01"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node 1
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Idle02" {
	"a_Idle02"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node 1
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Idle03" {
	"a_Idle03"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node 1
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "LineIdle01" {
	"a_LineIdle01"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "LineIdle02" {
	"a_LineIdle02"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "LineIdle03" {
	"a_LineIdle03"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "LineIdle04" {
	"a_LineIdle04"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Crouch_idleD" {
	"a_Crouch_idleD"
	activity "ACT_COVER_LOW" -1
	fadein 0.2
	fadeout 0.2
	node 2
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "layer_crouch_run_holding" {
	"a_layer_crouch_run_holding"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist upperbodyreplace
}

$sequence "layer_crouch_walk_no_weapon" {
	"a_layer_crouch_walk_no_weapon"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist upperbodyreplace
}

$sequence "layer_crouch_walk_holding" {
	"a_layer_crouch_walk_holding"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist upperbodyreplace
}

$sequence "layer_crouch_run_no_weapon" {
	"a_layer_crouch_run_no_weapon"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist upperbodyreplace
}

$sequence "layer_run_holding" {
	"a_layer_run_holding"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist upperbodyreplace
}

$sequence "walk_all" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 2051 9 "" }
	{ event 2050 23 "" }
	fadein 0.2
	fadeout 0.2
	node 3
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "run_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	node 4
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Crouch_walk_all" {
	"a_Crouch_walkS"
	"a_Crouch_walkSE"
	"a_Crouch_walkE"
	"a_Crouch_walkNE"
	"a_Crouch_walkN"
	"a_Crouch_walkNW"
	"a_Crouch_walkW"
	"a_Crouch_walkSW"
	"a_Crouch_walkS"
	activity "ACT_WALK_CROUCH" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	node 5
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "crouchRUNALL1" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_Crouch_runN"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_CROUCH" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	addlayer "layer_crouch_run_no_weapon"
	node 6
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Stand_to_run" {
	"a_Stand_to_run"
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Run_to_stand" {
	"a_Run_to_stand"
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Stand_to_walk" {
	"a_Stand_to_walk"
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Walk_to_stand" {
	"a_Walk_to_stand"
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Stand_to_crouch" {
	"a_Stand_to_crouch"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	transition 1 2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Crouch_to_stand" {
	"a_Crouch_to_stand"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	transition 2 1
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Crouch_to_run" {
	"a_Crouch_to_run"
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Run_to_crouch" {
	"a_Run_to_crouch"
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "stairs_up" {
	"a_stairs_up"
	activity "ACT_STAIRS_UP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "stairs_down" {
	"a_stairs_down"
	activity "ACT_STAIRS_DOWN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "ladder_up" {
	"a_ladder_up"
	activity "ACT_CLIMB_UP" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "ladder_down" {
	"a_ladder_down"
	activity "ACT_CLIMB_DOWN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Open_door_away" {
	"a_Open_door_away"
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Open_door_towards_right" {
	"a_Open_door_towards_right"
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Open_door_towards_left" {
	"a_Open_door_towards_left"
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Startle_behind" {
	"a_Startle_behind"
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Cover_R" {
	"a_Cover_R"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Cover_L" {
	"a_Cover_L"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "CoverLow_R" {
	"a_CoverLow_R"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "CoverLow_L" {
	"a_CoverLow_L"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "ThrowItem" {
	"a_ThrowItem"
	{ event 1 32 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Heal" {
	"a_Heal"
	activity "ACT_CIT_HEAL" 1
	{ event 1 22 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Wave" {
	"a_Wave"
	activity "ACT_SIGNAL1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "DuckUnder" {
	"a_DuckUnder"
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "crouchidlehide" {
	"a_crouchidlehide"
	fadein 0.2
	fadeout 0.2
	node 7
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "standtocrouchhide" {
	"a_standtocrouchhide"
	fadein 0.2
	fadeout 0.2
	transition 1 7
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "crouchhidetostand" {
	"a_crouchhidetostand"
	fadein 0.2
	fadeout 0.2
	transition 7 1
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "scaredidle" {
	"a_scaredidle"
	fadein 0.2
	fadeout 0.2
	node 1
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "preSkewer" {
	"a_preSkewer"
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Fear_Reaction" {
	"a_Fear_Reaction"
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "layer_run_protected" {
	"a_layer_run_protected"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "upperbodyreplace" 
}

$sequence "run_protected_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN_protected"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_PROTECTED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	addlayer "layer_run_protected"
	node 4
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "body_trans_y" {
	"a_body_trans_lt"
	"a_body_trans"
	"a_body_trans_rt"
	autoplay
	blend "body_trans_Y" 5.995715 -6.061964
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	  
	
	//weightlist weights_body_trans_y_//weightlist
}

$sequence "body_trans_x" {
	"a_body_trans_fwd"
	"a_body_trans"
	"a_body_trans_bwd"
	autoplay
	blend "body_trans_X" 10.204566 -10.06929
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	  
	
	//weightlist weights_body_trans_y_//weightlist
}

$sequence "body_trans_z" {
	"a_body_trans_dwn"
	"a_body_trans"
	"a_body_trans_up"
	autoplay
	blend "body_lift" -4.27087 2.090734
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	  
	
	//weightlist weights_body_trans_y_//weightlist
}

$sequence "body_rot_z" {
	"a_body_rot_z_lt"
	"a_body_rot"
	"a_body_rot_z_rt"
	autoplay
	blend "body_yaw" 56.18209 -56.92838
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	  
	
	//weightlist weights_body_trans_y_//weightlist
}

$sequence "body_rot_y" {
	"a_body_rot_back"
	"a_body_rot"
	"a_body_rot_fwd"
	autoplay
	blend "body_pitch" -31.35316 28.45316
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	  
	
	//weightlist weights_body_trans_y_//weightlist
}

$sequence "body_rot_x" {
	"a_body_rot_lt"
	"a_body_rot"
	"a_body_rot_rt"
	autoplay
	blend "body_roll" -17.88843 15.76445
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	  
	
	//weightlist weights_body_trans_y_//weightlist
}

$sequence "spine_rot_z" {
	"a_spine_rot_z_lt"
	"a_spine_rot"
	"a_spine_rot_z_rt"
	autoplay
	blend "spine_yaw" 40.61969 -40.63087
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	  
	
	//weightlist weights_spine_rot_z_//weightlist
}

$sequence "spine_rot_y" {
	"a_spine_rot_back"
	"a_spine_rot"
	"a_spine_rot_fwd"
	autoplay
	blend "spine_pitch" -34.36347 55.64111
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	  
	
	//weightlist weights_spine_rot_z_//weightlist
}

$sequence "spine_rot_x" {
	"a_spine_rot_lt"
	"a_spine_rot"
	"a_spine_rot_rt"
	autoplay
	blend "spine_roll" -21.8524 21.86035
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	  
	
	//weightlist weights_spine_rot_z_//weightlist
}

$sequence "neck_trans_x" {
	"a_neck_trans_back"
	"a_neck_trans"
	"a_neck_trans_fwd"
	autoplay
	blend "neck_trans" -0.434581 0.632216
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	  
	
	//weightlist weights_neck_trans_x_//weightlist
}

$sequence "head_rot_z" {
	"a_head_rot_z_lt"
	"a_head_rot"
	"a_head_rot_z_rt"
	autoplay
	blend "head_yaw" -59.74305 59.74277
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	  
	
	//weightlist weights_neck_trans_x_//weightlist
}

$sequence "head_rot_y" {
	"a_head_rot_dwn"
	"a_head_rot"
	"a_head_rot_up"
	autoplay
	blend "head_pitch" 36.12508 -29.98144
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	  
	
	//weightlist weights_neck_trans_x_//weightlist
}

$sequence "head_rot_x" {
	"a_head_rot_lt"
	"a_head_rot"
	"a_head_rot_rt"
	autoplay
	blend "head_roll" -18.29514 18.31503
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	fps 30
	  
	
	//weightlist weights_neck_trans_x_//weightlist
}

$sequence "Idle_Angry_SMG1" {
	"a_Idle_Angry_SMG1"
	activity "ACT_IDLE_SMG1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Idle_SMG1_Aim" {
	"a_Idle_SMG1_Aim"
	activity "ACT_IDLE_ANGRY_SMG1" 1
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_all"
	node 8
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "shoot_ar1" {
	"a_shoot_ar1"
	activity "ACT_RANGE_ATTACK_AR1" 1
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_all"
	node 8
	fps 25
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "shoot_hmg1" {
	"a_shoot_hmg1"
	activity "ACT_RANGE_ATTACK_HMG1" 1
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_all"
	node 8
	fps 25
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "shoot_smg1" {
	"a_shoot_smg1"
	activity "ACT_RANGE_ATTACK_SMG1" 1
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_all"
	node 8
	fps 25
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "shoot_smg2" {
	"a_shoot_smg2"
	activity "ACT_RANGE_ATTACK_SMG2" 1
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_all"
	node 8
	fps 25
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "shoot_shotgun" {
	"a_shoot_shotgun"
	activity "ACT_RANGE_ATTACK_SHOTGUN" 1
	fadein 0.2
	fadeout 0.2
	node 8
	fps 25
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "shoot_rpg" {
	"a_shoot_rpg"
	activity "ACT_RANGE_ATTACK_RPG" 1
	fadein 0.2
	fadeout 0.2
	node 8
	fps 5
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "reload_smg1" {
	"a_reload_smg1"
	activity "ACT_RELOAD_SMG1" 1
	{ event 3015 47 "" }
	fadein 0.2
	fadeout 0.2
	node 8
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "gesture_shoot_ar1" {
	"a_gesture_shoot_ar1"
	activity "ACT_GESTURE_RANGE_ATTACK_AR1" 1
	delta
	fadein 0.2
	fadeout 0.2
	fps 25
	  
	
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "gesture_shoot_hmg1" {
	"a_gesture_shoot_hmg1"
	activity "ACT_GESTURE_RANGE_ATTACK_HMG1" 1
	delta
	fadein 0.2
	fadeout 0.2
	fps 25
	  
	
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "gesture_shoot_smg1" {
	"a_gesture_shoot_smg1"
	activity "ACT_GESTURE_RANGE_ATTACK_SMG1" 1
	delta
	fadein 0.2
	fadeout 0.2
	fps 25
	  
	
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "gesture_shoot_smg2" {
	"a_gesture_shoot_smg2"
	activity "ACT_GESTURE_RANGE_ATTACK_SMG2" 1
	delta
	fadein 0.2
	fadeout 0.2
	fps 25
	  
	
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "gesture_shoot_shotgun" {
	"a_gesture_shoot_shotgun"
	activity "ACT_GESTURE_RANGE_ATTACK_SHOTGUN" 1
	delta
	fadein 0.2
	fadeout 0.2
	fps 25
	  
	
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "CrouchDToShoot" {
	"a_CrouchDToShoot"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	transition 2 8
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "ShootToCrouchD" {
	"a_ShootToCrouchD"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	transition 8 2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Cover_LToShootSMG1" {
	"a_Cover_LToShootSMG1"
	fadein 0.2
	fadeout 0.2
	transition 9 8
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Cover_RToShootSMG1" {
	"a_Cover_RToShootSMG1"
	fadein 0.2
	fadeout 0.2
	transition 10 8
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "CoverLow_LToShootSMG1" {
	"a_CoverLow_LToShootSMG1"
	fadein 0.2
	fadeout 0.2
	transition 9 8
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "CoverLow_RToShootSMG1" {
	"a_CoverLow_RToShootSMG1"
	fadein 0.2
	fadeout 0.2
	transition 10 8
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "ShootSMG1ToCover_L" {
	"a_ShootSMG1ToCover_L"
	fadein 0.2
	fadeout 0.2
	transition 8 9
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "ShootSMG1ToCover_R" {
	"a_ShootSMG1ToCover_R"
	fadein 0.2
	fadeout 0.2
	transition 8 10
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "ShootSMG1ToCoverLow_L" {
	"a_ShootSMG1ToCoverLow_L"
	fadein 0.2
	fadeout 0.2
	transition 8 11
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "ShootSMG1ToCoverLow_R" {
	"a_ShootSMG1ToCoverLow_R"
	fadein 0.2
	fadeout 0.2
	transition 8 12
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "crouch_shoot_smg1" {
	"a_crouch_shoot_smg1"
	activity "ACT_RANGE_ATTACK_SMG1_LOW" 1
	{ event 3002 0 "" }
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_all"
	node 2
	fps 25
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "crouch_aim_smg1" {
	"a_crouch_aim_smg1"
	activity "ACT_RANGE_AIM_SMG1_LOW" 1
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_all"
	node 2
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "crouch_reload_smg1" {
	"a_crouch_reload_smg1"
	activity "ACT_RELOAD_SMG1_LOW" 1
	{ event 3015 46 "" }
	fadein 0.2
	fadeout 0.2
	node 2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "shootp1" {
	"a_shootp1"
	activity "ACT_RANGE_ATTACK_PISTOL" 1
	{ event 3014 1 "" }
	fadein 0.2
	fadeout 0.2
	fps 4
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "reloadpistol" {
	"a_reloadpistol"
	activity "ACT_METROPOLICE_RELOAD_PISTOL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "drawpistol" {
	"a_drawpistol"
	activity "ACT_METROPOLICE_DRAW_PISTOL" 1
	{ event 50 9 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "overwatch" {
	"a_overwatch"
	activity "ACT_METROPOLICE_OVERWATCH" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "gesture_shootp1" {
	"a_gesture_shootp1"
	activity "ACT_GESTURE_RANGE_ATTACK_PISTOL" 1
	delta
	{ event 3014 1 "" }
	fadein 0.2
	fadeout 0.2
	fps 4
	  
	
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "reload_pistol" {
	"a_reload_pistol"
	activity "ACT_RELOAD_PISTOL" 1
	{ event 3015 0 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "crouch_shoot_pistol" {
	"a_crouch_shoot_pistol"
	activity "ACT_RANGE_ATTACK_PISTOL_LOW" 1
	{ event 3014 4 "" }
	fadein 0.2
	fadeout 0.2
	fps 18
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "crouch_reload_pistol" {
	"a_crouch_reload_pistol"
	activity "ACT_RELOAD_PISTOL_LOW" 1
	{ event 3015 0 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "throw1" {
	"a_throw1"
	activity "ACT_RANGE_ATTACK_THROW" 1
	{ event 3005 28 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "swing" {
	"a_swing"
	activity "ACT_MELEE_ATTACK_SWING" 1
	{ event 3001 13 "" }
	fadein 0.2
	fadeout 0.2
	fps 35
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "MeleeAttack01" {
	"a_MeleeAttack01"
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "pickup" {
	"a_pickup"
	activity "ACT_PICKUP_GROUND" 1
	{ event 2040 13 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "aimup" {
	"a_aimup"
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "layer_Aim_all" {
	"a_run_aim_straight_up"
	"a_run_aim_straight_up"
	"a_run_aim_straight_up"
	"a_run_aim_up_right"
	"a_run_aim_up_center"
	"a_run_aim_up_left"
	"a_run_aim_mid_right"
	"a_run_aim_mid_center"
	"a_run_aim_mid_left"
	"a_run_aim_down_right"
	"a_run_aim_down_center"
	"a_run_aim_down_left"
	blend "aim_yaw" -45 45
	blend "aim_pitch" -90 45
	blendwidth 3
	delta
	fadein 0.2
	fadeout 0.2
	iklock "rfoot" 1 0
	iklock "lfoot" 1 0
	fps 30
	  
	
	// weightlist "weights_layer_Aim_all"
}

$sequence "layer_walk_aiming" {
	"a_layer_walk_aiming"
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_all"
	fps 30
	weightlist upperbodyreplace
}

$sequence "layer_walk_holding" {
	"a_layer_walk_holding"
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist upperbodyreplace
}

$sequence "layer_run_aiming" {
	"a_layer_run_aiming"
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_all"
	fps 30
	weightlist upperbodyreplace
}

$sequence "layer_crouch_run_aiming" {
	"a_layer_crouch_run_aiming"
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_all"
	fps 30
	weightlist upperbodyreplace
}

$sequence "layer_crouch_walk_aiming" {
	"a_layer_crouch_walk_aiming"
	fadein 0.2
	fadeout 0.2
	addlayer "layer_Aim_all"
	fps 30
	weightlist upperbodyreplace
}

$sequence "walkAIMALL1" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN_SMG"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK_AIM_RIFLE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	addlayer "layer_walk_aiming"
	node 3
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "walkHOLDALL1" {
	"a_WalkS"
	"a_WalkSE"
	"a_WalkE"
	"a_WalkNE"
	"a_WalkN_SMG"
	"a_WalkNW"
	"a_WalkW"
	"a_WalkSW"
	"a_WalkS"
	activity "ACT_WALK_RIFLE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	addlayer "layer_walk_holding"
	node 3
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "run_holding_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN_SMG"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_RIFLE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	addlayer "layer_run_holding"
	node 4
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "run_aiming_all" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_RunN_SMG"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_AIM_RIFLE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	addlayer "layer_run_aiming"
	node 4
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "crouchRUNHOLDINGALL1" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_Crouch_runN"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_CROUCH_RIFLE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	addlayer "layer_crouch_run_holding"
	node 6
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "crouchRUNAIMINGALL1" {
	"a_RunS"
	"a_RunSE"
	"a_RunE"
	"a_RunNE"
	"a_Crouch_runN"
	"a_RunNW"
	"a_RunW"
	"a_RunSW"
	"a_RunS"
	activity "ACT_RUN_CROUCH_AIM_RIFLE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	addlayer "layer_crouch_run_aiming"
	node 6
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Crouch_walk_holding_all" {
	"a_Crouch_walkS"
	"a_Crouch_walkSE"
	"a_Crouch_walkE"
	"a_Crouch_walkNE"
	"a_Crouch_walkN"
	"a_Crouch_walkNW"
	"a_Crouch_walkW"
	"a_Crouch_walkSW"
	"a_Crouch_walkS"
	activity "ACT_WALK_CROUCH_RIFLE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	addlayer "layer_crouch_walk_holding"
	node 5
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "Crouch_walk_aiming_all" {
	"a_Crouch_walkS"
	"a_Crouch_walkSE"
	"a_Crouch_walkE"
	"a_Crouch_walkNE"
	"a_Crouch_walkN"
	"a_Crouch_walkNW"
	"a_Crouch_walkW"
	"a_Crouch_walkSW"
	"a_Crouch_walkS"
	activity "ACT_WALK_CROUCH_AIM_RIFLE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	fadein 0.2
	fadeout 0.2
	addlayer "layer_crouch_walk_aiming"
	node 5
	fps 30
	loop
	// weightlist "weights_layer_crouch_run_holding"
}

$sequence "ragdoll" {
	"a_ragdoll"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	// weightlist "weights_layer_crouch_run_holding"
}

$collisionjoints "Combine_Soldier_physics.smd"
{
	$mass 115
	$inertia 10
	$damping 0.01
	$rotdamping 1.5
	$rootbone "valvebiped.bip01_pelvis"
	$jointmerge "valvebiped.bip01_pelvis" "valvebiped.bip01"
	$jointmerge "valvebiped.bip01_pelvis" "valvebiped.bip01_spine1"

	$jointconstrain "ValveBiped.Bip01_Pelvis" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_Pelvis" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_Pelvis" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -48 48 1
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -25 25 1
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -25 50 1

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -120 120 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -57 102 1
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -93 30 1

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -120 120 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -102 57 1
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -93 30 1

	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -120 4 1

	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -120 120 1
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -57 70 1

	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -120 4 1

	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -120 120 1
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -57 70 1

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -25 39 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -8 75 1
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -97 32 1

	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -12 126 1

	$jointconstrain "ValveBiped.Bip01_Head1" x limit -20 20 1
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -25 25 1
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -13 30 1

	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -25 20 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -73 6 1
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -93 30 1

	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit 0 0 1
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -8 126 1

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -1 -1 1
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -19 19 1
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -15 35 1

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -21 6 1
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -15 35 1
}

