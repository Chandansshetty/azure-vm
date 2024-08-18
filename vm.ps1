$vmName = "First-VM"
$resourceGroupName = "First-set"
Start-AzVM -ResourceGroupName $resourceGroupName -Name $vmName -Force
