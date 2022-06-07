$rg_var = az group create --name MyResourceGroup001 --location "westus" | ConvertFrom-json
$rg_list = az group list | ConvertFrom-json
$sc_var = az storage account create -n scdmp001 -g  $rg_var.name |ConvertFrom-json

$sc_list = az storage account list 
$sc_show = az storage account show  -g $rg_var.name  -n $sc_var.name

# so to use variable make sure to run the command that contains the value of variable first
# second convert from json is required to use variable as i practiced