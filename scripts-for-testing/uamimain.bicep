//deploymentscope
targetScope = 'subscription'

//Parameters
param uamiRGName string = 'uamiRG'
param location string = 'eastus2'
param roleDefinitionID string = '8e3af657-a8ff-443c-a75c-2fe8c4bcb635'

var roleAssignmentName= guid('uami', roleDefinitionID)


//Resource Groups
resource uamiRG 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name:uamiRGName
  location: location
}


module uamiDeploy 'uami.bicep' = {
  name: 'uamiDeployModule'
  scope: uamiRG
  params: {
    location: location
  }
}


resource roleAssignment 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  name: roleAssignmentName
  dependsOn: [
    uamiDeploy
  ]
  properties: {
    roleDefinitionId: subscriptionResourceId('Microsoft.Authorization/roleDefinitions', roleDefinitionID)
    principalId: uamiDeploy.outputs.principalId
  }

}



