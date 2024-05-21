$namePrefix = 'ark'
$tags = @{
  'Application'         = 'IPAM'
  'Author'              = 'Arkahna.io'
  'BusinessCriticality' = 'Low'
  'Environment'         = 'Production'
  'Owner'               = 'Cloud Platform'
  'deployedBy'          = 'Arkahna'  
}
$resourcenames = @{
  appServiceName      = 'ark-app-prd-aue-ipam'
  appServicePlanName  = 'ark-sp-prd-aue-ipam'
  cosmosAccountName   = 'ark-cosmos-prd-aue-ipam'
  cosmosContainerName = 'container01'
  cosmosDatabaseName  = 'database01'
  keyVaultName        = 'ark-kv-prd-aue-ipam'
  workspaceName       = 'ark-log-prd-aue-ipam'
  managedIdentityName = 'ark-uai-prd-aue-ipam'
  resourceGroupName   = 'ark-rg-prd-aue-ipam'
}
$location = "australiaeast"

./deploy.ps1 -namePrefix $namePrefix -tags $tags -resourcenames $resourcenames -location $location