//2002 Combine Soldier playermodel
//By The One Epicplayer

$modelname Player/Combine_Soldier.mdl
$cdmaterials Models\Player\Combine_soldier models\citizen\city

$bbox -13 -13 0 13 13 72

$eyeposition 0 0 70
$opaque

$pushd "../Combine_Soldier_XSI"

// whole body
$model Soldier "../Combine_Soldier_XSI/Soldier_reference_2002.smd" 

$include "../Combine_Soldier_XSI/soldier_hierarchy.qci"
$include "../Combine_Soldier_XSI/2003_standardikchains_dummy.qci"

$sequence PlayerIdle1 "2003_anims/combat_idle01" frames 0 0 loop FPS 30 ACT_IDLE 1 addlayer Aim_stand_delta_all
$include "../Combine_Soldier_XSI/2003_Soldier_shared_megapatch.qci"

//Stops an error in the console
$sequence gesture_shoot_pistol a_shootGeneric delta ACT_GESTURE_RANGE_ATTACK_PISTOL 1

$sequence Crouch_WalkALL2 {
	a_Crouch_walkS a_Crouch_walkSE a_Crouch_walkE
	a_Crouch_walkNE a_Crouch_walkN a_Crouch_walkNW 
	a_Crouch_walkW a_Crouch_walkSW a_Crouch_walkS
	blendwidth 9 blend move_yaw -180 180
	ACT_WALK_CROUCH 1
}

//For SOME REASON the crouch anim needs to be named "Crouch_idleD" to work
$sequence Crouch_idleD "2003_anims/Shoot_AR2_crouch" FPS 30 ACT_RANGE_AIM_PISTOL_LOW 1  frames 2 2 addlayer Aim_crouch_delta_all

$sequence player_Walk_aiming_all {
	a_WalkEasy_S a_WalkEasy_SE a_WalkEasy_E a_WalkEasy_NE a_WalkEasy_N a_WalkEasy_NW a_WalkEasy_W a_WalkEasy_SW a_WalkEasy_S
	blendwidth 9 blend move_yaw -180 180
	//blendlayer layer_walk_aiming 0 0 0 0 local
	addlayer aim_walk_all_delta
	addlayer Aim_all
	ACT_WALK 1
}

$sequence player_Run_all {
	a_RunS a_RunSE a_RunE
	a_RunNE a_RunN a_RunNW
	a_RunW a_RunSW a_RunS
	blendwidth 9 blend move_yaw -180 180
	addlayer aim_run_all_delta
	addlayer Aim_all
	ACT_RUN 1
}

$include "../Combine_Soldier_XSI/hitbox.qci"
$include "../Combine_Soldier_XSI/2003_ragdoll.qci"
$popd