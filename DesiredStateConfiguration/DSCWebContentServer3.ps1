Configuration FileDemo {
    Node 'localhost' {
        File FileDemo {
        DestinationPath = 'C:\inetpub\wwwroot\index.htm'
            Ensure = "Present"
            Contents = '<!DOCTYPE html>
<html>
<body>

<h1>Server 3</h1>

</body>
</html>
'
        }
    }
}