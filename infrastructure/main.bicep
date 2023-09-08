targetScope = 'subscription'

@allowed(['dev', 'prod'])
param environment string

@secure()
param administratorLogin string

@secure()
param administratorLoginPassword string

resource rg_devops_database 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'rg-database-devops-${environment}'
  #disable-next-line no-hardcoded-location
  location: 'eastus'
}

module postgresModule './modules/postgres.bicep' = {
  name: 'postgresDeploy'
  scope: rg_devops_database
  params: {
    administratorLogin: administratorLogin
    administratorLoginPassword: administratorLoginPassword
    environment: environment
    resourceGroupLocation: rg_devops_database.location
  }
}
