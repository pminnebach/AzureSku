$Skus = @(
    [ordered]@{
        SkuId = '0c266dff-15dd-4b49-8397-2bb16070ed52'
        SkuPartNumber = 'MCOMEETADV'
        SkuFriendlyName = 'AUDIO CONFERENCING'
        ServicePlans = @(
            [ordered]@{
                ServicePlanId = '3e26ee1f-8a5f-4d52-aee2-b81ce45c8f40'
                ServicePlanName = 'MCOMEETADV'
                ServicePlanFriendlyName = 'AUDIO CONFERENCING'
            }
        )
    },
    [ordered]@{
        SkuId = '2b9c8e7c-319c-43a2-a2a0-48c5c6161de7'
        SkuPartNumber = 'AZURE ACTIVE DIRECTORY BASIC'
        SkuFriendlyName = 'AAD_BASIC'
        ServicePlans = @(
            [ordered]@{
                ServicePlanId = 'c4da7f8a-5ee2-4c99-a7e1-87d2df57f6fe'
                ServicePlanName = 'AAD_BASIC'
                ServicePlanFriendlyName = 'MICROSOFT AZURE ACTIVE DIRECTORY BASIC'
            }
        )
    },
    [ordered]@{
        SkuId = '078d2b04-f1bd-4111-bbd4-b4b1b354cef4'
        SkuPartNumber = 'AZURE ACTIVE DIRECTORY PREMIUM P1'
        SkuFriendlyName = 'AAD_PREMIUM'
        ServicePlans = @(
            [ordered]@{
                ServicePlanId = '41781fb2-bc02-4b7c-bd55-b576c07bb09d'
                ServicePlanName = 'AAD_PREMIUM'
                ServicePlanFriendlyName = 'AZURE ACTIVE DIRECTORY PREMIUM P1'
            },
            [ordered]@{
                ServicePlanId = '932ad362-64a8-4783-9106-97849a1a30b9'
                ServicePlanName = 'ADALLOM_S_DISCOVERY'
                ServicePlanFriendlyName = 'CLOUD APP SECURITY DISCOVERY'
            },
            [ordered]@{
                ServicePlanId = '8a256a2b-b617-496d-b51b-e76466e88db0'
                ServicePlanName = 'MFA_PREMIUM'
                ServicePlanFriendlyName = 'MICROSOFT AZURE MULTI-FACTOR AUTHENTICATION'
            }
        )
    }
)

$OutPathJson = Join-Path -Path $PWD -ChildPath 'AzureSku.json'
$Skus | ConvertTo-Json -Depth 3 | Out-File -FilePath $OutPathJson