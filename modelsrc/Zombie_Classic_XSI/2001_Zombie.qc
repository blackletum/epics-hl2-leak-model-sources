/*
==============================================================================

2001 Wasteland Zombie as a Zombie Classic Reskin
Model by epicplayer

==============================================================================
*/

$modelname Zombie/Classic.mdl

$cdmaterials models\zombie models\zombie_classic
// whole body
$body studio "2001_meshes/2001_zombie_reference_newhands.smd"

//$bbox -13 -13 0 13 13 72

$eyeposition 0 0 64

/*
$attachment "headcrab" "ValveBiped.HC_Rear_Bone" -0.00 -0.00 0.00 rotate -0 0 0 rigid
$attachment "eyes" "ValveBiped.HC_Body_Bone" -0.00 -0.00 0.00 rotate 0 0 -50
$attachment "head" "ValveBiped.HC_Body_Bone" -0.00 -0.00 0.00 rotate 0 0 -50
$attachment "chest" "ValveBiped.Bip01_Spine4" -3.00 6.00 0.00 rotate 0 60 90
$attachment "maw" "ValveBiped.Bip01_Spine2" 0.00 8.00 0.00 rotate 0 90 90
$attachment Blood_Left "ValveBiped.Bip01_L_Finger2" 0 0 0 rigid
$attachment Blood_Right "ValveBiped.Bip01_R_Finger2" 0 0 0 rigid
*/

//$collapsebones
$mostlyopaque

$include "hitbox_torso.qci"
$include "hitbox_legs.qci"
$include "hitbox_head.qci"
//$hbox 1 "HeadcrabClassic.SpineControl"	    -7.00   -6.00   -6.00     7.00    4.00    6.00

//$include "..\humans\standardhierarchy.qci"
//$include "..\humans\standardikchains.qci"
//$include "..\humans\weaponmacros.qci"

$include "2003_Zombie_shared.qci"

$sequence Tantrum "Tantrum" FPS 30 rotate 180 LOOP ACT_ZOMBIE_TANTRUM 1
$sequence WallPound "WallPound" FPS 30 LOOP ACT_ZOMBIE_WALLPOUND 1 { event 22 14 } { event 22 35 }


//$pushd "..\Humans\Male"
$include "2003_ragdoll.qci"
//$popd


//Headcrab 1
$bodygroup headcrab1
{
blank
studio "2001_meshes/2001_zombie_hc_reference.smd"
}