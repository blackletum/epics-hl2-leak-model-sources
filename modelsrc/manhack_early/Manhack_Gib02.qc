//Manhack_Gibs


$modelname gibs/manhack_gib02.mdl
$cdmaterials models/obsolete/ManhackOld

$scale 1.0
$body "Body" "manhack_Gibs2.smd" 
$staticprop
$surfaceprop "metal"
$autocenter


$sequence  idle "manhack_Gibs2" fps 30





$collisionmodel "manhack_Gibs2.smd" {
	// Mass in kilograms
	$mass 3.0
	$concave
}

$keyvalues
{
	"prop_data"
	{
		"base" "Metal.Small"
	}
}
