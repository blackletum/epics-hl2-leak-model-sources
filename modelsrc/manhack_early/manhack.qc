//======================================
//   Old 2001 manhack remake
//	 Model by Qleebsooru, QCs and custom animations by Epicplayer
//======================================

$eyeposition 0 0 2

$modelname manhack.mdl
$cdmaterials models/obsolete/ManhackOld
$origin 0 4 -1.5
$body "Body" "Manhack" 
$mostlyopaque

// Controllers
$controller 0 "Point01"  ZR 0 360

$attachment "Eye" "Dummy01" 8 3 0 rigid
$attachment "Light" "Dummy08" 0 0 0 rigid

// --------- Animation sequences -------

$sequence Idle "MH_idle1" fps 30 ACT_FLY 1 loop
$sequence Packed "MH_unpack" fps 30 frame 0 0 ACT_IDLE 1 loop
$sequence Unpack "MH_unpack" fps 30 ACT_MANHACK_UNPACK 1 { event 50 11 } { event 52 0 } { event 51 32 }
$sequence Dead "MH_Dead" LOOP fps 30 ACT_DIERAGDOLL 1

$sequence Flinch "MH_Flinch" FPS 30 snap activity ACT_SMALL_FLINCH 1

$surfaceprop "metal"


// physics
$collisionmodel "Manhack.VRM" {
	// Mass in kilograms
	$mass 15.0
}

$collisionjoints "Manhack.VRM" {

	$mass 15.0
	$rootbone "Point01"

}

$Bodygroup Blade	
{
Blank
studio "Manhack_blade"
}


$Bodygroup BladeBlur
{
Blank
studio "Manhack_bladeblur"
}

//----- Gibs -----
$collisiontext {
	"break"
	{
		"model" "Gibs/Manhack_Gib01"
		"health" "0"
		"fadetime" "30"
	}
	"break"
	{
		"model" "Gibs/Manhack_Gib02"
		"health" "0"
		"fadetime" "30"
	}
	"break"
	{
		"model" "Gibs/Manhack_Gib03"
		"health" "0"
		"fadetime" "30"
	}
	"break"
	{
		"model" "Gibs/Manhack_Gib04"
		"health" "0"
		"fadetime" "30"
	}
	"break"
	{
		"model" "Gibs/Manhack_Gib05"
		"health" "0"
		"fadetime" "30"
	}
	"break"
	{
		"model" "Gibs/Manhack_Gib06"
		"health" "0"
		"fadetime" "30"
	}	
}