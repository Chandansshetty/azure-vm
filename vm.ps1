Install-Module -Name Az -AllowClobber -Force
Import-Module Az
$tenantId = "4dc77c90-5a87-4618-9b18-196f9adc8bef"
$appId = "1cf80180-810f-480f-93cb-2f8553c1c6d7"
$clientSecret = "2ab89f5d-5180-4274-875c-6239e1a5c7a2"
$subscriptionId = "02ad5631-aebf-4a13-affe-9d6189acdece"
$vmName = "First-VM"
$resourceGroupName = "First-set"
$secureClientSecret = ConvertTo-SecureString $clientSecret -AsPlainText
Connect-AzAccount -ServicePrincipal -Credential (New-Object System.Management.Automation.PSCredential($appId, $clientSecret)) -TenantId $tenantId -SubscriptionId $subscriptionId
Start-AzVM -ResourceGroupName $resourceGroupName -Name $vmName
