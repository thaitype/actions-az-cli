# actions-az-cli
Azure CLI Toolset on GitHub Actions

## Scale Up, Down for Azure SQL Database with DTU Model

```yaml
- uses: mildronize/actions-az-cli/sql/db/update-service-objective@v1
  with: 
    azure_credentials: ${{ secrets.azure_credentials }}
    db_name: ${{ env.db_name }}
    db_server: ${{ env.db_server }}
    resource_group: ${{ env.resource_group }}
    service_objective: S2
```

## Scale Up, Down for Azure App Service Plan

```yaml
- uses: mildronize/actions-az-cli/appservice/plan/update-sku@v1
  with: 
    azure_credentials: ${{ secrets.azure_credentials }}
    app_service_plan: ${{ env.app_service_plan }}
    resource_group: ${{ env.resource_group }}
    sku: P1V3
```

Note: SKU `[--sku {B1, B2, B3, D1, F1, FREE, I1, I1v2, I2, I2v2, I3, I3v2, P1V2, P1V3, P2V2, P2V3, P3V2, P3V3, PC2, PC3, PC4, S1, S2, S3, SHARED, WS1, WS2, WS3}]`

Ref: https://docs.microsoft.com/en-us/cli/azure/appservice/plan?view=azure-cli-latest

## Get Azure KeyVault Secret

Get Secret from Azure Key Vault and masking as a secret

```yaml
- uses: mildronize/actions-az-cli/keyvault/secret/show@v1
  with: 
    azure_credentials: ${{ secrets.azure_credentials }}
    vault_name: '{{vault name}}'
    secret_name: '{{secret name}}'
```
