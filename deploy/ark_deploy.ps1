$namePrefix = 'ark'
$tags = @{
  'Application'         = 'IPAM'
  'Author'              = 'Arkahna.io'
  'BusinessCriticality' = 'Low'
  'Environment'         = 'Production'
  'Owner'               = 'Cloud Platform'
  'deployedBy'          = 'Arkahna'  
  'CreatedDate'         = '2024-05-24'
}
$resourcenames = @{
  appServiceName      = 'ark-app-prd-aue-ipam'
  appServicePlanName  = 'ark-sp-prd-aue-ipam'
  cosmosAccountName   = 'ark-cosmos-prd-aue-ipam'
  cosmosContainerName = 'container01'
  cosmosDatabaseName  = 'database01'
  keyVaultName        = 'ark-kv-prd-aue-ipam01' # had to add number as the kv already existed and could not be purged
  workspaceName       = 'ark-log-prd-aue-ipam'
  managedIdentityName = 'ark-uai-prd-aue-ipam'
  resourceGroupName   = 'ark-rg-prd-aue-ipam'
}
$location = "australiaeast"

./deploy.ps1 -namePrefix $namePrefix -tags $tags -resourcenames $resourcenames -location $location