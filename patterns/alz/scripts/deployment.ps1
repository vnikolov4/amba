# Generic
Connect-AzAccount -Tenant addb9eec-467b-4ead-b011-7808eb409b59 -UseDeviceAuthentication
Get-AzContext | FL

# check for: 
# Az.Accounts
# Az.Resources
Get-InstalledModule -Name "Az.Accounts" 
Get-InstalledModule -Name "Az.Resources" 


# Configuring variables for deployment
$location = "westeurope"
$pseudoRootManagementGroup = "AzureCAF"

# Perform the deployment
=========== Working
#New-AzManagementGroupDeployment -Name "amba-GeneralDeployment" -ManagementGroupId $pseudoRootManagementGroup -Location $location -TemplateUri "https://raw.githubusercontent.com/Azure/azure-monitor-baseline-alerts/2024-03-01/patterns/alz/alzArm.json" -TemplateParameterFile ".\patterns\alz\alzArm.param.json"
New-AzManagementGroupDeployment -Name "amba-GeneralDeployment" -ManagementGroupId $pseudoRootManagementGroup -Location $location -TemplateUri "https://raw.githubusercontent.com/vnikolov4/amba/main/patterns/alz/alzArm.json" -TemplateParameterUri "https://raw.githubusercontent.com/vnikolov4/amba/main/patterns/alz/alzArm.param.json"
============