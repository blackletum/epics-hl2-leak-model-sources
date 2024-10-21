/*
----------------------------

Headcrabclassic 2002 QC remake by epicplayer
2002 headcrab UVs by BuB

----------------------------
*/

$modelname headcrabclassic.mdl
$cdmaterials models\headcrab_classic 

$eyeposition 0 0 16

// whole body
$body studio "meshes_2002/headcrabclassic_reference.smd" 

$sequence Walk "headcrabclassic_walk" loop FPS 45 LX LY activity ACT_WALK 1

$sequence Idle01 "headcrabclassic_idle" loop FPS 30 activity ACT_IDLE 2

$sequence IdleB "headcrabclassic_idleb" loop FPS 30 activity ACT_IDLE 1

//$sequence IdleC "headcrabclassic_idlec"  FPS 30 activity ACT_IDLE 1

//$sequence IdleD "headcrabclassic_idled" loop FPS 30 activity ACT_IDLE 2

$sequence Run1 "headcrabclassic_run" loop FPS 30 LX LY activity ACT_RUN 1 //{ event AE_CL_PLAYSOUND 5 NPC_Headcrab.Footstep } { event AE_CL_PLAYSOUND 11 NPC_Headcrab.Footstep } { event AE_CL_PLAYSOUND 17 NPC_Headcrab.Footstep } { event AE_CL_PLAYSOUND 22 NPC_Headcrab.Footstep } { event AE_CL_PLAYSOUND 28 NPC_Headcrab.Footstep } { event AE_CL_PLAYSOUND 33 NPC_Headcrab.Footstep }


$sequence TurnLeft "headcrabclassic_turnL" xr yr zr x y z loop FPS 30 activity ACT_TURN_LEFT 1 //{ event AE_CL_PLAYSOUND 7 NPC_Headcrab.Footstep }  { event AE_CL_PLAYSOUND 8 NPC_Headcrab.Footstep }  { event AE_CL_PLAYSOUND 12 NPC_Headcrab.Footstep }  { event AE_CL_PLAYSOUND 16 NPC_Headcrab.Footstep } { event AE_CL_PLAYSOUND 23 NPC_Headcrab.Footstep } { event AE_CL_PLAYSOUND 25 NPC_Headcrab.Footstep } { event AE_CL_PLAYSOUND 30 NPC_Headcrab.Footstep }

$sequence TurnRight "headcrabclassic_turnR" loop FPS 30 activity ACT_TURN_RIGHT 1 //{ event AE_CL_PLAYSOUND 7 NPC_Headcrab.Footstep }  { event AE_CL_PLAYSOUND 8 NPC_Headcrab.Footstep }  { event AE_CL_PLAYSOUND 12 NPC_Headcrab.Footstep }  { event AE_CL_PLAYSOUND 16 NPC_Headcrab.Footstep } { event AE_CL_PLAYSOUND 23 NPC_Headcrab.Footstep } { event AE_CL_PLAYSOUND 24 NPC_Headcrab.Footstep } { event AE_CL_PLAYSOUND 28 NPC_Headcrab.Footstep } { event AE_CL_PLAYSOUND 30 NPC_Headcrab.Footstep }

//$sequence jump "headcrab_jump" FPS 30 

//$sequence jumpattack "headcrabclassic_jumpattack" FPS 30 activity ACT_RANGE_ATTACK1 1 { event AE_HEADCRAB_JUMPATTACK 0 }

//$sequence jumpattack_broadcast "HeadcrabClassic_jumpattack_broadcast" frames 26 64 FPS 30 activity ACT_RANGE_ATTACK1 1 { event AE_HEADCRAB_JUMP_TELEGRAPH 0 } { event AE_HEADCRAB_JUMPATTACK 5 }
$sequence jumpattack_broadcast "HeadcrabClassic_jumpattack_broadcast" frames 13 64 FPS 30 activity ACT_RANGE_ATTACK1 1 { event 3 0 } { event 2 16 }

//$sequence flinch1 "headcrab_flinch" FPS 30  activity ACT_SMALL_FLINCH 1

//$sequence hopleft "headcrab_hopleft" FPS 30 
//<<TEMP>>
//$sequence Die "headcrabclassic_dietemp" FPS 30 activity ACT_DIESIMPLE 1

$sequence threat "headcrabclassic_threatdisplay" FPS 30 activity ACT_HEADCRAB_THREAT_DISPLAY 1

$sequence Drown "headcrabclassic_drown" FPS 30 loop activity ACT_HEADCRAB_DROWN 1

//The rest of these are sequences that are only in retail, so commenting out - epicplayer

/*
$sequence canal5b_sewer_jump "Lockerjump" fps 30 alignto idle01 lx ly lz frames 20 80

$sequence headcrabbed "headcrabbed_citizen" fps 30
$sequence headcrabbedpost "headcrabbed_citizen" fps 30 loop frames 250 294

$sequence BurrowIn "Burrow_In" FPS 30 activity ACT_HEADCRAB_BURROW_IN 1 { event AE_HEADCRAB_BURROW_IN 25 } { event AE_HEADCRAB_BURROW_IN_FINISH 42 }
$sequence BurrowOut "Burrow_Out" FPS 30 activity ACT_HEADCRAB_BURROW_OUT 1  { event AE_HEADCRAB_BURROW_OUT 0 }
$sequence BurrowIdle "Burrow_Out" frames 0 0 FPS 30 loop activity ACT_HEADCRAB_BURROW_IDLE 1

$sequence cannisterDeploy_A cannisterDeploy_A fps 30 activity ACT_HEADCRAB_CRAWL_FROM_CANISTER_LEFT 1 frames 0 46 {
walkframe 15 lx ly lz lzr
	walkframe 20 lx ly lz lzr
	walkframe 25 lx ly lz lzr
	walkframe 30 lx ly lz lzr
	walkframe 40 lx ly lz lzr
	walkframe 46 lx ly lz lzr
}
$sequence cannisterDeploy_B cannisterDeploy_B fps 30 activity ACT_HEADCRAB_CRAWL_FROM_CANISTER_CENTER 1 frames 0 46 {
	walkframe 15 lx ly lz lzr
	walkframe 20 lx ly lz lzr
	walkframe 25 lx ly lz lzr
	walkframe 30 lx ly lz lzr
	walkframe 40 lx ly lz lzr
	walkframe 46 lx ly lz lzr
}
$sequence cannisterDeploy_C cannisterDeploy_C fps 30 activity ACT_HEADCRAB_CRAWL_FROM_CANISTER_RIGHT 1 frames 0 46 {
	walkframe 20 lx ly lz lzr
	walkframe 25 lx ly lz lzr
	walkframe 30 lx ly lz lzr
	walkframe 40 lx ly lz lzr
	walkframe 46 lx ly lz lzr
}

$sequence testDeploy_A cannisterDeploy_A fps 30
$sequence testDeploy_b cannisterDeploy_b fps 30
$sequence testDeploy_C cannisterDeploy_C fps 30
*/

$include "ragdoll.qci"
$include "hitbox.qci"
//$alwayscollapse "HeadcrabClassic.fangr_bone2"
