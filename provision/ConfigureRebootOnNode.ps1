Configuration ConfigureRebootOnNode
{
    Node 'localhost'
    {
        LocalConfigurationManager
        {
            RebootNodeIfNeeded = $true
        }
    }
}
#Create MOF
ConfigureRebootOnNode
Set-DscLocalConfigurationManager .\ConfigureRebootOnNode -Verbose
Get-DscLocalConfigurationManager
