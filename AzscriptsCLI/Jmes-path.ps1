Az group list --query "[]"
Az group list --query "[].name"
Az group list --query "[].{RG_name:name, RG_location:location}"
Az group list --query "[? location == 'westus']" |ConvertFrom-json
Az group list --query "[? location == 'westus'].name"
Az group list --query "[].{Id: id}" -o table

Az group list --query "[].name" -o yaml

