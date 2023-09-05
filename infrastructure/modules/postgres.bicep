@secure()
param administratorLogin string
@secure()
param administratorLoginPassword string

param environment string
param resourceGroupLocation string

targetScope = 'resourceGroup'

resource pg_devops_database 'Microsoft.DBforPostgreSQL/flexibleServers@2022-12-01' = {
#disable-next-line decompiler-cleanup
  name: 'pg-database-devops-${environment}'
  location: resourceGroupLocation
  sku: {
    name: 'Burstable_B1ms_v1'
    tier: 'Burstable'
  }
  properties: {
    version: '15'
    administratorLogin: administratorLogin
    administratorLoginPassword: administratorLoginPassword
    highAvailability: {
      mode: 'Disabled'
    }
    storage: {
      storageSizeGB: 32
    }
    backup: {
      backupRetentionDays: 7
      geoRedundantBackup: 'Disabled'
    }
    availabilityZone: '2'
  }
}
