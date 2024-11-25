//Hyper Era Odell Remake + Stupid Karate AI
//Remake by Programme, rigging and anim stuff by epicplayer


$modelname "Odell.mdl"
$cdmaterials models/odell
$scale 0.95 //Feedback said that Odell is too tall by default, so shrinking a little

// whole body
$model "Odell" Odell.smd

$bodygroup "blowtorch"
{
blank
studio Odell_blowtorch.smd
}

$eyeposition 0 0 67
$surfaceprop flesh
//$controller Mouth "mouth" XR 0 20

//$sequence idle "Odell" ACT_IDLE 1 loop
$sequence idle animations/Laugh fps 10 ACT_IDLE 1 loop rotate -90 frames 0 32 fixuploop -10 5

$pushd "Animations"

$weightlist handsonly "Bip01" 0.0 "Bip01 R Finger0" 1 "Bip01 R Finger1" 1 "Bip01 R Finger2" 1 "Bip01 R Finger3" 1 "Bip01 R Finger4" 1 "Bip01 L Finger0" 1 "Bip01 L Finger1" 1 "Bip01 L Finger2" 1 "Bip01 L Finger3" 1 "Bip01 L Finger4" 1
$sequence walkhandslayer WalkLoop frame 0 0 weightlist handsonly hidden

$sequence walk WalkLoop ACT_WALK 1 loop lx alignto idle
$sequence walkstart walkstart lx alignto idle addlayer walkhandslayer
$sequence walkstop walkstop lx alignto idle addlayer walkhandslayer
$sequence WalkTurnL WalkTurnL alignto idle addlayer walkhandslayer walkframe 16 lx ly walkframe 40 lx ly lzr walkframe 50 lx ly lzr walkframe 63 lx ly 
$sequence WalkTurnR WalkTurnR alignto idle addlayer walkhandslayer walkframe 10 lx ly walkframe 24 lx ly lzr walkframe 51 lx ly lzr walkalignto 66 walk lx ly lzr

$sequence run RunLoop ACT_RUN 1 loop lx alignto idle fixuploop -3 1
$sequence runstart RunStart lx alignto idle addlayer walkhandslayer
$sequence runstop RunStop lx alignto idle addlayer walkhandslayer

$sequence Wave Wave alignto idle rotate -90
$sequence Vault Vault lx
$sequence ThruDoor ThruDoor lx ly
$sequence Laugh Laugh rotate -90
$sequence Muscle Muscle rotate 40
$sequence HandPlant HandPlant alignto idle rotate 90
$sequence Hambone Hambone rotate -90
$sequence Excercise Excercise rotate -90 fixuploop -20 0
$sequence DRUNK DRUNK alignto idle rotate -90 lx ly
$sequence Dodge Dodge rotate -90
$sequence CS1DANCE CS1DANCE lx
$sequence CRIPPLE CRIPPLE alignto idle rotate -90 lx
$sequence CREEP CREEP alignto idle rotate -90 lx
$sequence Cigarette Cigarette alignto idle rotate -90
$sequence Cheer Cheer alignto idle rotate -90 addlayer walkhandslayer
$sequence ChairStand ChairStand alignto idle rotate -90 lx ly addlayer walkhandslayer
$sequence ChairSit ChairSit alignto idle rotate -90 lx ly addlayer walkhandslayer
$sequence CHACHA CHACHA alignto idle rotate -90 lx
$sequence BroadJump BroadJump alignto idle walkframe 96 lx ly walkframe 134 lx ly walkframe 165 lx ly
$sequence BlownBack BlownBack lx ly
$sequence Bees Bees lx ly lzr
$sequence Banana Banana alignto idle lx ly addlayer walkhandslayer
$sequence Backstab Backstab alignto idle lx ly rotate 40
$sequence GunDive GunDive alignto idle lx ly rotate 164
$sequence GunFighter GunFighter alignto idle lx ly rotate 180

$sequence BackFlip BackFlip alignto idle lx ly rotate 105
$sequence FaceHit FaceHit alignto idle lx ly rotate 165
$sequence FrntHndSpring FrntHndSpring alignto idle lx ly rotate -60
$sequence GetPunched GetPunched alignto idle lx ly rotate 5
$sequence GetSlapped GetSlapped lx
$sequence Grenade Grenade alignto idle lx ly rotate -25
$sequence JumpOver JumpOver alignto idle lx ly
$sequence JogLoop JogLoop frame 0 45 alignto idle loop lx addlayer walkhandslayer
$sequence KOed KOed alignto idle lx ly
$sequence LimpLoop LimpLoop loop alignto idle lx ACT_WALK_HURT 1 addlayer walkhandslayer
$sequence LiteLimpLoop LiteLimpLoop loop alignto idle lx ACT_WALK_HURT 1 addlayer walkhandslayer
$sequence Stagger Stagger loop alignto idle lx rotate 180 addlayer walkhandslayer

$sequence Axekick Axekick alignto idle lx ly rotate 10
$sequence BackLegKick BackLegKick alignto idle lx ly rotate -40
$sequence CartWhlPunch CartWhlPunch alignto idle lx ly rotate 110
$sequence DblRndKick DblRndKick alignto idle lx ly rotate -30
$sequence FrontSweepKick FrontSweepKick alignto idle lx ly rotate 70
$sequence JumpRndKick JumpRndKick alignto idle lx ly rotate -55
$sequence KickPunch KickPunch alignto idle lx ly rotate -20
$sequence LegHookKick LegHookKick alignto idle lx ly rotate -10
$sequence Punch Punch alignto idle rotate 180
$sequence RoundKick RoundKick alignto idle lx ly rotate -15
$sequence ScissorKick ScissorKick alignto idle lx ly rotate -40
$sequence SideKick SideKick alignto idle lx ly rotate -30
$sequence Slap Slap alignto idle rotate 180
$sequence SpinBackKick SpinBackKick alignto idle lx ly rotate -10
$sequence SpinKickHi SpinKickHi alignto idle lx ly
$sequence StaightKick StaightKick alignto idle lx ly rotate -20
$sequence TornadoKick TornadoKick alignto idle lx ly rotate -40

$sequence die01 BlownBack ACT_DIESIMPLE 1 alignto idle frame 30 74 lx ly
$sequence die02 Banana ACT_DIESIMPLE 1 alignto idle frame 17 98 lx ly addlayer walkhandslayer
$sequence die03 Backstab ACT_DIESIMPLE 1 alignto idle lx ly rotate 40 frame 19 140 addlayer walkhandslayer
$sequence die04 KOed ACT_DIESIMPLE 1 alignto idle lx ly frame 55 145 addlayer walkhandslayer

$sequence idle_angry JumpRndKick ACT_IDLE_ANGRY 1 fps 25 alignto idle rotate -55 frames 0 18 fixuploop -6 1

$sequence melee01 Axekick ACT_MELEE_ATTACK1 1 frame 24 56 alignto idle lx ly rotate 10 { event AE_ODELL_KICK 6 } //blendlayer idle_angry 14 32 33 33
$sequence melee02 BackLegKick ACT_MELEE_ATTACK1 1 fps 50 frame 14 45 alignto idle lx ly rotate -40 { event AE_ODELL_KICK 16 }
$sequence melee03 DblRndKick ACT_MELEE_ATTACK1 1 frame 34 82 alignto idle lx ly rotate -30 { event AE_ODELL_KICK 31 }
$sequence melee04 JumpRndKick ACT_MELEE_ATTACK1 1 fps 44 frame 27 71 alignto idle lx ly rotate -55 { event AE_ODELL_KICK 19 } { event AE_ODELL_KICK 29 }
$sequence melee05 KickPunch ACT_MELEE_ATTACK1 1 fps 40 frame 15 56 alignto idle lx ly rotate -20 walkframe 11 lx ly walkframe 18 lx ly walkframe 25 lx ly walkframe 41 lx ly { event AE_ODELL_KICK 12 } { event AE_ODELL_KICK 23 }
$sequence melee06 LegHookKick ACT_MELEE_ATTACK1 1 fps 40 frame 8 51 alignto idle lx ly rotate -10 { event AE_ODELL_KICK 20 } { event AE_ODELL_KICK 24 }
$sequence melee07 RoundKick ACT_MELEE_ATTACK1 1 fps 35 frame 8 40 alignto idle lx ly rotate -15 { event AE_ODELL_KICK 14 }
$sequence melee08 ScissorKick ACT_MELEE_ATTACK1 1 fps 35 frame 23 76 alignto idle lx ly rotate -30 walkframe 15 lx ly walkframe 27 lx ly walkframe 53 lx ly { event AE_ODELL_KICK 23 } { event AE_ODELL_KICK 26 }
$sequence melee09 SideKick ACT_MELEE_ATTACK1 1 frame 29 66 alignto idle lx ly rotate -30 { event AE_ODELL_KICK 14 }
$sequence melee10 SpinBackKick ACT_MELEE_ATTACK1 1 frame 0 34 alignto idle lx y rotate -10 { event AE_ODELL_KICK 22 }
$sequence melee11 SpinKickHi ACT_MELEE_ATTACK1 1 fps 40 frame 45 80 alignto idle lx ly rotate -20 walkframe 11 lx ly walkframe 19 lx ly walkframe 35 lx ly { event AE_ODELL_KICK 16 }
$sequence melee12 StaightKick ACT_MELEE_ATTACK1 1 fps 50 frame 13 41 alignto idle lx ly rotate -20 { event AE_ODELL_KICK 8 } 
$sequence melee13 TornadoKick ACT_MELEE_ATTACK1 1 fps 50 frame 17 88 alignto idle lx ly rotate -40 blendlayer idle_angry 56 72 72 72 { event AE_ODELL_KICK 7 } { event AE_ODELL_KICK 43 }

$popd