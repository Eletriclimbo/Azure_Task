$resourceGroup = "SecondGroup"
$location = "West US"
#$vmName = @("myVM0", "myVM1")
$storageaccountName = "abconeoneone1"

Publish-AzureRmVMDscConfiguration -ConfigurationPath "E:\WebServer.ps1"  -ResourceGroupName $resourceGroup -StorageAccountName $storageaccountName -SkipDependencyDetection -force

Set-AzureRmVMDscExtension -ResourceGroupName $resourceGroup -VMName Server0 -ArchiveBlobName "WebServer.ps1.zip" -ArchiveStorageAccountName $storageaccountName -ConfigurationName "WebServer" -Version "2.76" -Location $location


Publish-AzureRmVMDscConfiguration -ConfigurationPath "E:\DSCWebContentServer3.ps1"  -ResourceGroupName $resourceGroup -StorageAccountName $storageaccountName -SkipDependencyDetection -force
Set-AzureRmVMDscExtension -ResourceGroupName $resourceGroup -VMName Server0 -ArchiveBlobName "DSCWebContentServer3.ps1.zip" -ArchiveStorageAccountName $storageaccountName -ConfigurationName "FileDemo" -Version "2.76" -Location $location