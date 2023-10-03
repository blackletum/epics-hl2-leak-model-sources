//Big Tbot
//Model and animations by Xinus22
//2003 leak edits and additions by epicplayer.

$modelname "TBot1.mdl"

$origin 0 15 0
$scale		50

$bodygroup "body"
{
	studio "tbot_reference.smd"
}

$surfaceprop metal

$eyeposition 0 0 77

$cdmaterials models\obsolete\TBot1

$sequence reference tbot_reference.smd fps 24 loop

$sequence idle01 Idle01 ACT_IDLE 1 loop
$sequence punchwall anims\Punch_wall.smd fps 24 LX LY LZR
$sequence postpunch_idle anims\idle.smd fps 24 loop alignto punchwall
$sequence idlegesture anims\idlegesture.smd fps 24 alignto punchwall
$sequence jumpout anims\jumpout.smd fps 24 alignto punchwall