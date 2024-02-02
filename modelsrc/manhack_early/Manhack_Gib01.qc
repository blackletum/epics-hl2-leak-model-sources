//Manhack_Gibs


$modelname gibs/manhack_gib01.mdl
$cdmaterials models/obsolete/ManhackOld

$scale 1.0
$body "Body" "manhack_Gibs1.smd" 
$staticprop
$surfaceprop "metal"
$autocenter


$sequence  idle "manhack_Gibs1" fps 30





$collisionmodel "manhack_Gibs1.smd" {
	// Mass in kilograms
	$mass 4.0
	$concave
}

$keyvalues
{
	"prop_data"
	{
		"base" "Metal.Small"
	}
}
