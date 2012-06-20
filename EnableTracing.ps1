# ----------------------------------------
# Developer: Ashish Mahajan
# Email: ashishmahajan@hotmail.com
# Website: ashishmahajan.com
# Script Definition: This script will enable the trace for Microsoft Dynamics CRM 2011.
# ----------------------------------------
add-pssnapin Microsoft.CRM.Powershell
Get-CrmSetting TraceSettings
$setting = Get-CrmSetting TraceSettings
$setting.Enabled="True"
Set-CrmSetting $setting
Get-CrmSetting TraceSettings
read-host 'The trace is now enabled. Press press enter key to close this window. . .'