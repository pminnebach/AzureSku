$Skus = @(
    [pscustomobject]@{
        SkuId = 'Guid'
        SkuPartNumber = 'LONGNAME'
        SkuFriendlyName = 'The friendly readable name'
        ServicePlans = @(
            [pscustomobject]@{
                SkuId = 'Guid'
                SkuPartNumber = 'LONGNAME'
                SkuFriendlyName = 'The friendly readable name'
            },
            [pscustomobject]@{
                SkuId = 'Guid'
                SkuPartNumber = 'LONGNAME'
                SkuFriendlyName = 'The friendly readable name'
            }
        )
    },
    [pscustomobject]@{
        SkuId = 'Guid'
        SkuPartNumber = 'LONGNAME'
        SkuFriendlyName = 'The friendly readable name'
        ServicePlans = @(
            [pscustomobject]@{
                SkuId = 'Guid'
                SkuPartNumber = 'LONGNAME'
                SkuFriendlyName = 'The friendly readable name'
            },
            [pscustomobject]@{
                SkuId = 'Guid'
                SkuPartNumber = 'LONGNAME'
                SkuFriendlyName = 'The friendly readable name'
            }
        )
    }
)

$OutPathJson = Join-Path -Path $PSScriptRoot -ChildPath 'AzureSku.json'
$OutPathCsv = Join-Path -Path $PSScriptRoot -ChildPath 'AzureSku.csv'

$Skus | ConvertTo-Json | Out-File -FilePath $OutPathJson
$Skus | ConvertTo-Csv -NoTypeInformation | Out-File -FilePath $OutPathCsv
