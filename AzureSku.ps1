$Skus = @(
    [pscustomobject]@{
        SkuId = '0c266dff-15dd-4b49-8397-2bb16070ed52'
        SkuPartNumber = 'MCOMEETADV'
        SkuFriendlyName = 'AUDIO CONFERENCING'
        ServicePlans = @(
            [pscustomobject]@{
                SkuId = '3e26ee1f-8a5f-4d52-aee2-b81ce45c8f40'
                SkuPartNumber = 'MCOMEETADV'
                SkuFriendlyName = 'AUDIO CONFERENCING'
            }
        )
    },
    [pscustomobject]@{
        SkuId = '2b9c8e7c-319c-43a2-a2a0-48c5c6161de7'
        SkuPartNumber = 'AZURE ACTIVE DIRECTORY BASIC'
        SkuFriendlyName = 'AAD_BASIC'
        ServicePlans = @(
            [pscustomobject]@{
                SkuId = 'c4da7f8a-5ee2-4c99-a7e1-87d2df57f6fe'
                SkuPartNumber = 'AAD_BASIC'
                SkuFriendlyName = 'MICROSOFT AZURE ACTIVE DIRECTORY BASIC'
            }
        )
    },
    [pscustomobject]@{
        SkuId = '078d2b04-f1bd-4111-bbd4-b4b1b354cef4'
        SkuPartNumber = 'AZURE ACTIVE DIRECTORY PREMIUM P1'
        SkuFriendlyName = 'AAD_PREMIUM'
        ServicePlans = @(
            [pscustomobject]@{
                SkuId = '41781fb2-bc02-4b7c-bd55-b576c07bb09d'
                SkuPartNumber = 'AAD_PREMIUM'
                SkuFriendlyName = 'AZURE ACTIVE DIRECTORY PREMIUM P1'
            },
            [pscustomobject]@{
                SkuId = '932ad362-64a8-4783-9106-97849a1a30b9'
                SkuPartNumber = 'ADALLOM_S_DISCOVERY'
                SkuFriendlyName = 'CLOUD APP SECURITY DISCOVERY'
            },
            [pscustomobject]@{
                SkuId = '8a256a2b-b617-496d-b51b-e76466e88db0'
                SkuPartNumber = 'MFA_PREMIUM'
                SkuFriendlyName = 'MICROSOFT AZURE MULTI-FACTOR AUTHENTICATION'
            }
        )
    }
)

$OutPathJson = Join-Path -Path $PSScriptRoot -ChildPath 'AzureSku.json'
$Skus | ConvertTo-Json | Out-File -FilePath $OutPathJson
