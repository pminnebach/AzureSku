# AzureSku
A public repo containing all known Azure SkuId and SkuPartNumber mapped to their friendly name.

At the moment this is still experimental, as I try and figure out what the best way of representing this data is. Everything is thus subject to change untill v1.0.0.

## How to use

```PowerShell
$uri = 'https://raw.githubusercontent.com/pminnebach/AzureSku/master/AzureSku.json'
$result = Invoke-RestMethod -Uri $uri -Method Get
```

Everything should unroll in usable objects.

```PowerShell
SkuId                                SkuPartNumber                     SkuFriendlyName    ServicePlans
-----                                -------------                     ---------------    ------------
0c266dff-15dd-4b49-8397-2bb16070ed52 MCOMEETADV                        AUDIO CONFERENCING {@{SkuId=3e26ee1f-8a5f-4d52-aee2-b81ce45c8f40; SkuPartNumber=MCOMEETADV; SkuFriendlyName=AUDIO CONFERENCING}}
2b9c8e7c-319c-43a2-a2a0-48c5c6161de7 AZURE ACTIVE DIRECTORY BASIC      AAD_BASIC          {@{SkuId=c4da7f8a-5ee2-4c99-a7e1-87d2df57f6fe; SkuPartNumber=AAD_BASIC; SkuFriendlyName=MICROSOFT AZURE ACTIVE...
078d2b04-f1bd-4111-bbd4-b4b1b354cef4 AZURE ACTIVE DIRECTORY PREMIUM P1 AAD_PREMIUM        {@{SkuId=41781fb2-bc02-4b7c-bd55-b576c07bb09d; SkuPartNumber=AAD_PREMIUM; SkuFriendlyName=AZURE ACTIVE DIRECTO...


PS C:\Users\me\Desktop> $result[2].ServicePlans

SkuId                                SkuPartNumber       SkuFriendlyName
-----                                -------------       ---------------
41781fb2-bc02-4b7c-bd55-b576c07bb09d AAD_PREMIUM         AZURE ACTIVE DIRECTORY PREMIUM P1
932ad362-64a8-4783-9106-97849a1a30b9 ADALLOM_S_DISCOVERY CLOUD APP SECURITY DISCOVERY
8a256a2b-b617-496d-b51b-e76466e88db0 MFA_PREMIUM         MICROSOFT AZURE MULTI-FACTOR AUTHENTICATION
```

## Contribute

I try to keep this list up-to-date as possible. If any new subscriptions and or sku's pop up. Please send the GUID, SkuPartNumber and the friendly name as shown in the Azure/O365 admin center.

To make it easy, run the following command:

```PowerShell
Get-AzureADSubscribedSku | select SkuId, SkuPartNumber, ServicePlans | ConvertTo-Json -Depth 4
```

## Sources

https://docs.microsoft.com/en-us/azure/active-directory/users-groups-roles/licensing-service-plan-reference

