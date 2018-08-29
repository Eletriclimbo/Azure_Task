  Get-AzureRmStorageAccount | select abconeoneone
 $storageContainer = Get-AzureRmStorageAccount | where {$_.StorageAccountName -eq 'abconeoneone'} | Get-AzureStorageContainer
 $FilePath = 'E:\1.html'
 $BlobName = 'MyFileSChedule.txt'
 $storageContainer | Set-AzureStorageBlobContent –File $FilePath –Blob $BlobName