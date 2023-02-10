$uamiRG = "rg-Lighthouse-uami"
$location = "eastus2"
$subscriptionId = (get-azcontext).subscription.id

$lighthouseTemplate = ".\ManagedServicesDeployment.json"
$lighthouseTemplateParameters = ".\ManagedServicesDeployment.parameters.json"

New-AzResourceGroup -name $msiRG -location $location

$uami = New-AzUserAssignedIdentity -ResourceGroupName $uamiRG -Name "lighthouse-uami"
Start-Sleep -Seconds 10
New-AzRoleAssignment -ObjectId $uami.PrincipalId -RoleDefinitionName "Owner" -Scope /subscriptions/$subscriptionId