param registryName string
@allowed([
  'Basic'
  'Classic'
  'Premium'
  'Standard'
])
param skuName string = 'Basic'
param location string = resourceGroup().location
param adminUserEnabled bool = true

resource containerRegistry 'Microsoft.ContainerRegistry/registries@2021-06-01-preview' = {
  name: registryName
  location: location
  sku: {
    name: skuName
  }
  properties: {
    adminUserEnabled: adminUserEnabled
  }
}
