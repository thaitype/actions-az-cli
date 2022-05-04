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
    service_objective: ${{ github.event.inputs.service_objective }}
```