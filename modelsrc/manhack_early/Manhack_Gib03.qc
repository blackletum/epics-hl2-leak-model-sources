//Manhack_Gibs


$modelname gibs/manhack_gib03.mdl
$cdmaterials models/obsolete/ManhackOld

$scale 1.0
$body "Body" "manhack_Gibs3.smd" 
$staticprop
$surfaceprop "metal"
$autocenter


$sequence  idle "manhack_Gibs3" fps 30





$collisionmodel "manhack_Gibs3.smd" {
	// Mass in kilograms
	$mass 1.0
	$concave
}

$keyvalues
{
	"prop_data"
	{
		"base" "Metal.Small"
	}
}
