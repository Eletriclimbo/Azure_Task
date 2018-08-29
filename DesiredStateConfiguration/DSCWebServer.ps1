Configuration WebServer {

    Import-DscResource -ModuleName PsDesiredStateConfiguration
    WindowsFeature WebServer {
            Ensure = "Present"
            Name   = "Web-Server"
        }
             
}