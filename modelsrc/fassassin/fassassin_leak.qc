//HL2 Leak Female Assassin QC Remake
//Edits by epicplayer

$modelname fassassin.mdl
$cdmaterials models\fassassin

$model Fassassin "fassassin_leak_reference.smd" {
}

$attachment "leftHand" "valvebiped.bip01_L_Hand" 3.5 0 0 rigid
$attachment "RightHand" "valvebiped.bip01_R_Hand" 3.5 0 0 rigid rotate 0 0 180
$attachment "LeftMuzzle" "valvebiped.bip01_L_Hand" 12 -1.5 3.5 rigid
$attachment "RightMuzzle" "valvebiped.bip01_R_Hand" 12 -1.5 -3.5 rigid rotate 0 0 180
$attachment "Eye"	"ValveBiped.Bip01_Head1" 3.5 -5 0 rigid rotate 0 -90 0

$eyeposition 0 0 64

$ikchain rhand "valvebiped.Bip01_R_Hand" Z 0
$ikchain lhand "valvebiped.Bip01_L_Hand" Z 0
$ikchain rfoot "valvebiped.Bip01_R_Foot" Z 0
$ikchain lfoot "valvebiped.Bip01_L_Foot" Z 0

//Headcrab 1
$bodygroup guns
{
blank
studio "pistols_reference.smd"
}


$sequence perch "Idle_Perched" loop FPS 30 ACT_ASSASSIN_PERCH 1
$sequence idle "Idle_Standing" loop FPS 30 ACT_IDLE 1
$sequence Run "RunN" LX LY loop FPS 30 ACT_RUN 1
$sequence Shoot_Standing "Shoot_Standing" FPS 30

$sequence JumpStart "Leap" LX Z FPS 30 ACT_JUMP 1 frame 10 24 alignto idle

$origin 0 0 55
$sequence JumpLoop "Leap" X Z FPS 30 loop frame 25 34 ACT_GLIDE 1 alignto idle
$origin 0 0 0

$origin 0 0 55
$sequence JumpLand "Leap" X Z FPS 30 frame 35 52 ACT_LAND 1 alignto idle
$origin 0 0 0

//----CROUCH AIM----

$poseparameter "aim_pitch" -90 90 loop 360
$poseparameter "aim_yaw" -90 90 loop 360
  
$Weightlist HipsUpperbodyReplace "valvebiped.Bip01_Pelvis" 1.0 "ValveBiped.Bip01_L_Thigh" 0.0 "ValveBiped.Bip01_R_Thigh" 0.0

$animation a_aim_crouch_neutral "aim9way_crouching" frame 4 4 weightlist HipsUpperbodyReplace

$animation a_aim_crouch_Down_Left "aim9way_crouching" frame 0 0 subtract a_aim_crouch_neutral 0 weightlist HipsUpperbodyReplace
$animation a_aim_crouch_Down_Center "aim9way_crouching" frame 1 1 subtract a_aim_crouch_neutral 0 weightlist HipsUpperbodyReplace
$animation a_aim_crouch_Down_Right "aim9way_crouching" frame 2 2 subtract a_aim_crouch_neutral 0 weightlist HipsUpperbodyReplace
$animation a_aim_crouch_Mid_Left "aim9way_crouching" frame 3 3 subtract a_aim_crouch_neutral 0 weightlist HipsUpperbodyReplace
$animation a_aim_crouch_Mid_Center "aim9way_crouching" frame 4 4 subtract a_aim_crouch_neutral 0 weightlist HipsUpperbodyReplace
$animation a_aim_crouch_Mid_Right "aim9way_crouching" frame 5 5 subtract a_aim_crouch_neutral 0 weightlist HipsUpperbodyReplace
$animation a_aim_crouch_Up_Left "aim9way_crouching" frame 6 6 subtract a_aim_crouch_neutral 0 weightlist HipsUpperbodyReplace
$animation a_aim_crouch_Up_Center "aim9way_crouching" frame 7 7 subtract a_aim_crouch_neutral 0 weightlist HipsUpperbodyReplace
$animation a_aim_crouch_Up_Right "aim9way_crouching" frame 8 8 subtract a_aim_crouch_neutral 0 weightlist HipsUpperbodyReplace

$sequence layer_aim_crouch_all {
			a_aim_crouch_Up_Right a_aim_crouch_Up_Center a_aim_crouch_Up_Left
			a_aim_crouch_Mid_Right a_aim_crouch_Mid_Center a_aim_crouch_Mid_Left
			a_aim_crouch_Down_Right a_aim_crouch_Down_Center a_aim_crouch_Down_Left
			blend aim_yaw -60 60 blend aim_pitch -60 60 } delta iklock rfoot 1 0 iklock lfoot 1 0

$sequence Aim_Crouching "aim_crouching" fps 30 LOOP addlayer layer_aim_crouch_all

$sequence Shoot_crouching "shoot_crouching" fps 30 loop addlayer layer_aim_crouch_all ACT_RANGE_ATTACK1 1 { event 1 0 } { event 2 2 } //{ event AE_ASSASIN_FIRE_PISTOL_RIGHT 0 } { event AE_ASSASIN_FIRE_PISTOL_LEFT 2 }

$sequence FlipLeft "FlipEvade_left" alignto idle ACT_ASSASSIN_FLIP_LEFT 1 {
  walkframe 10 LY 
  walkframe 29 LY
}

$sequence FlipRight "FlipEvade_right" alignto idle ACT_ASSASSIN_FLIP_RIGHT 1 {
 walkframe 14 LY
 walkframe 24 LY
}

$sequence FlipBack "FlipEvade_back" alignto idle ACT_ASSASSIN_FLIP_BACK 1 {
 walkframe 8 LX
 walkframe 25 LX
}

$sequence FlipForward "FlipEvade_fwd" alignto idle ACT_ASSASSIN_FLIP_FORWARD 1 {
 walkframe 8 LX
 walkframe 29 LX
}
 
$sequence melee "melee01" ACT_MELEE_ATTACK1 1 {
{ event 3 10 }
//{ event AE_ASSASIN_KICK_HIT 10 }
walkframe 6 LX LY LZ
walkframe 30 LX LY LZ
}

$sequence melee2 "melee02" ACT_MELEE_ATTACK1 2 {
{ event 3 10 }
//{ event AE_ASSASIN_KICK_HIT 10 }
}

$sequence lunge "melee01reverse" ACT_ASSASSIN_LUNGE 1 {
walkframe 6 X Y Z
walkframe 30 X Y Z
}


$include "..\Humans\Standardhierarchy_leak.qci"
$alwayscollapse "ValveBiped"
$alwayscollapse "XSISceneRoot"
$include "../humans/standardikchains_leak.qci"
//$include "../humans/female/commonbones_leak.qci" //attachments arent included in leak model

$include "ragdoll.qci"
$include "hitbox_complete.qci"
