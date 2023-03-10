param location string


resource uamiDeploy 'Microsoft.ManagedIdentity/userAssignedIdentities@2022-01-31-preview' = {
  name: 'microagelighthouseuami'
  location: location
}


output principalId string = uamiDeploy.properties.principalId
