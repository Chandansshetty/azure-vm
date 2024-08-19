Install-Module -Name Az -AllowClobber -Force
Import-Module Az
$tenantId = "4dc77c90-5a87-4618-9b18-196f9adc8bef"
$appId = "16937fe3-b47b-4e29-9c9c-aa0133d7d41c"
$clientSecret = ".iF8Q~4i.9bMNuYxlDvIBEW1iMamjOdvZbkYFbW2"
$subscriptionId = "02ad5631-aebf-4a13-affe-9d6189acdece"
$vmName = "First-VM"
$resourceGroupName = "First-set"
$secureClientSecret = ConvertTo-SecureString $clientSecret -AsPlainText
Connect-AzAccount -ServicePrincipal -Credential (New-Object System.Management.Automation.PSCredential($appId, $clientSecret)) -TenantId $tenantId -SubscriptionId $subscriptionId
Start-AzVM -ResourceGroupName $resourceGroupName -Name $vmName
