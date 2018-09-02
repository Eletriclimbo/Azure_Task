$acct = "abconeoneone"
$key = "fP7FjAVL3LYclT8AGRybdHakPI0qOUHZQhfcypSzC/FGQpr3fP/gwHIy6LDU3WCofKLXnsrLgpPPLvE6F3Dknw=="
$container = "azure-webjobs-hosts"
$file = "C:\inetpub\wwwroot\index.htm"
$properties = @{"ContentType" = "html"}
$time = Get-Date -Format g
$BlobName = "WebSite 2 $time"
#create a context for communicating with azure storage
$ctx = New-AzureStorageContext -StorageAccountName $acct -StorageAccountKey $key -Protocol Https

#use Set-AzureStorageBlobContent to upload file
Set-AzureStorageBlobContent -File $file -Container $container -Context $ctx -BlobType Block -Properties $properties  –Blob $BlobName
